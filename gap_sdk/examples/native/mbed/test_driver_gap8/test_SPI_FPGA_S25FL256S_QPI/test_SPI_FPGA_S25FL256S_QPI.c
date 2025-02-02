 #include<string.h>
// MBED OS
#include "cmsis_os2.h"
// SPI CMSIS driver
#include "spi_multi_api.h"

#define BUFFER_SIZE 256
#define PAGE_SIZE 256
#define PAGE_NUM  2

#define P_ERR 6
#define E_ERR 5
#define DUMMY 4

GAP_L2_DATA uint8_t SPI_RX_BUFFER[BUFFER_SIZE];
GAP_L2_DATA uint8_t SPI_TX_BUFFER[BUFFER_SIZE];

spi_command_sequence_t s_command;

// Set Configuration register WRR (01h)
// Send 16 bits data, 8 bits for status register and 8 bits for configuration register
/*
 * BIT7 BIT6 : Latency code
 * BIT1      : QUAD
 */
static void conf_flash(spi_t *spim)
{
    spi_master_cs(spim, 0);
    spi_master_write(spim, 0x06);
    spi_master_cs(spim, 1);

    memset(&s_command, 0, sizeof(spi_command_sequence_t));
    s_command.cmd       = 0x01;
    s_command.cmd_bits  = 8;
    s_command.cmd_mode  = uSPI_Single;
    s_command.tx_bits   = 16;
    s_command.tx_data   = 0x2200;
    s_command.data_mode = uSPI_Single;
    spi_master_transfer_command_sequence(spim, &s_command);
}

// 4-kB Sector Erase - P4E
static void erase_page_in_flash(spi_t *spim)
{
    spi_master_cs(spim, 0);
    spi_master_write(spim, 0x06);
    spi_master_cs(spim, 1);

    memset(&s_command, 0, sizeof(spi_command_sequence_t));
    s_command.cmd       = 0x20;
    s_command.cmd_bits  = 8;
    s_command.addr_bits = 24;
    s_command.addr      = (PAGE_NUM * PAGE_SIZE) << 8;
    s_command.cmd_mode  = uSPI_Single;
    s_command.addr_mode = uSPI_Single;
    spi_master_transfer_command_sequence(spim, &s_command);
}

// Quad page program - QPP
static void write_page_in_flash(spi_t *spim)
{
    spi_master_cs(spim, 0);
    spi_master_write(spim, 0x06);
    spi_master_cs(spim, 1);

    /* Set QPI mode */
    spi_master_qspi(spim, uSPI_Quad);

    memset(&s_command, 0, sizeof(spi_command_sequence_t));
    s_command.cmd       = 0x32;
    s_command.cmd_bits  = 8;
    s_command.addr_bits = 24;
    s_command.addr      = (PAGE_NUM * PAGE_SIZE) << 8;
    s_command.cmd_mode  = uSPI_Single;
    s_command.addr_mode = uSPI_Single;
    s_command.tx_bits   = BUFFER_SIZE*8;
    s_command.tx_data   = 0;
    s_command.tx_buffer = (uint8_t *)SPI_TX_BUFFER;
    s_command.data_mode = uSPI_Quad;
    spi_master_transfer_command_sequence(spim, &s_command);

    /* Set NON-QPI mode */
    spi_master_qspi(spim, uSPI_Single);
}

// Quad I/O Read - QIOR
static void read_page_from_flash(spi_t *spim, unsigned int flash_addr)
{
    /* Set QPI mode */
    spi_master_qspi(spim, uSPI_Quad);

    memset(&s_command, 0, sizeof(spi_command_sequence_t));
    s_command.cmd       = 0xEB;
    s_command.cmd_bits  = 8;
    s_command.addr_bits = 24;
    s_command.addr      = flash_addr;
    s_command.cmd_mode  = uSPI_Single;
    s_command.addr_mode = uSPI_Quad;
    s_command.rx_bits   = BUFFER_SIZE*8;
    s_command.alter_data_bits = 8;
    s_command.alter_data      = 0x0A;
    s_command.alter_data_mode = uSPI_Quad;
    s_command.dummy     = DUMMY;
    s_command.rx_buffer = (uint8_t *)SPI_RX_BUFFER;
    s_command.data_mode = uSPI_Quad;

    spi_master_transfer_command_sequence(spim, &s_command);

    /* Set NON-QPI mode */
    spi_master_qspi(spim, uSPI_Single);
}

static int wait_process_end(spi_t *spim, unsigned int err_bit)
{
    // Wait the end of erasing process
    // Status Register 1(SR1V)
    // bit 0 -> 1-busy 0-idle
    // bit 1 -> 1-we
    // bit 6 -> 1-error 0-OK
    uint16_t read_status;
    do {
        spi_master_cs(spim, 0);
        spi_master_write(spim, 0x05);
        read_status = spi_master_write(spim, 0x00);
        spi_master_cs(spim, 1);
        /* printf("read_status = %x\n", read_status); */

        if (read_status & (1 << err_bit))
        {
            printf("P_ERR bit = 1, an error occurs in the programming operation\n");
            return 1;
        }

    } while(read_status & 0x01);

    return 0;
}

int main()
{
    printf("Fabric controller code execution for mbed_os SPI driver test\n");

    /* Initialize the buffer */
    for (int i = 0; i< BUFFER_SIZE; i++)
        SPI_TX_BUFFER[i] = i;

    spi_t spim0;
    /* SPI pins init, SPI udma channel init */
    spi_init(&spim0, SPI0_SDIO0, SPI0_SDIO1, SPI0_SCLK, SPI0_CSN0);

    printf("SPI0_MOSI  = %d \n", SPI0_SDIO0);
    printf("SPI0_MISO  = %d \n", SPI0_SDIO1);
    printf("SPI0_SDIO2 = %d \n", SPI0_SDIO2);
    printf("SPI0_SDIO3 = %d \n", SPI0_SDIO3);
    printf("SPI0_CSN0  = %d \n", SPI0_CSN0);
    printf("SPI0_SCLK  = %d \n", SPI0_SCLK);


    /* SPI bits, cpha, cpol configuration */
    spi_format(&spim0, 32, 0, 0);

    /* Set fequence to 10MHz */
    spi_frequency(&spim0, 3125000);

    // Flash Configuration
    conf_flash(&spim0);
    wait_process_end(&spim0, E_ERR);

    spi_master_cs(&spim0, 0);
    spi_master_write(&spim0, 0x9f);
    uint32_t id = spi_master_write(&spim0, 0x00);
    spi_master_cs(&spim0, 1);
    printf("ID = %x\n", id);

    // Erase page
    erase_page_in_flash(&spim0);
    printf("Erasing Flash ... \n");
    wait_process_end(&spim0, E_ERR);

    // Write buffer
    write_page_in_flash(&spim0);
    printf("Writing Flash ... \n");
    wait_process_end(&spim0, P_ERR);

    // Read back buffer
    printf("Reading Flash ... \n");
    read_page_from_flash(&spim0,  ((PAGE_NUM * PAGE_SIZE) << 8));

    /* SPI free */
    spi_free(&spim0);

    // Check read values
    int error = 0;
    for (int i = 0; i < BUFFER_SIZE; i++)
    {
        printf(" %x ", SPI_RX_BUFFER[i]);
        if(SPI_RX_BUFFER[i] != (char)(i)) error++;
    }

    if (error) printf("Test failed with %d errors\n", error);
    else printf("Test success\n");

    /* return error; */
    return 0;
}
