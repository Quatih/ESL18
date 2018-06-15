/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <alt_types.h>
#include <io.h>
#include <system.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "sys/alt_stdio.h"
#include "system.h"

#include <unistd.h>

#include "altera_avalon_uart.h"
#include "altera_avalon_uart_regs.h"

int main()
{
	IOWR_ALTERA_AVALON_UART_CONTROL(UART_0_BASE, ALTERA_AVALON_UART_CONTROL_RRDY_MSK);
	while(1)
	{
		char output = 'a';
		IOWR_ALTERA_AVALON_UART_TXDATA(UART_0_BASE, output);
		usleep(1000000);
		output = '\r';
		IOWR_ALTERA_AVALON_UART_TXDATA(UART_0_BASE, output);

		char input = IORD_ALTERA_AVALON_UART_RXDATA(UART_0_BASE);
		usleep(1000000);
		printf("%c\r\n", input);
	}

  return 0;
}
