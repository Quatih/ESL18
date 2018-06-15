#include "stdio.h"
#include "gpmc_driver_c.h"

#include <fcntl.h>      // open()
#include <unistd.h>     // close()

#include "xxsubmod.h"


/* The pan encoder spans 1110 values which correspond to approximately Pi radians. */
double ConvertRad(uint32_t val)
{
	return (val/1110) * M_PI;
}

/* According to 20SIM, the output is a signal between -20 and 20. 
This output must be converted to a PWM output between 0 and 250 
and a direction according to a truthtable. */
uint32_t ConvertPWM(double val)
{
	//Brake
	if(val == 0)
		return 0;
	
	uint32_t ret_val = 0;
	ret_val = (abs(val/20) * 250;
	//Clockwise
	if(val < 0)
	{
		//INA = 1;
		//INB = 0;
		ret_val |= 0x01 << 8;
	}
	//Counterclockwise
	else
	{
		//INA = 0;
		//INB = 1;
		ret_val |= 0x10 << 8;
	}
}

uint32_t CheckOutput(uint32_t val)
{
	
	
}

int main(int argc, char* argv[])
{
	uint32_t M1 = 0, M2 = 0;		//Motor control steering values.
	int fd; // File descriptor.
	if (2 != argc)
	{
	printf("Usage: %s <device_name>\n", argv[0]);
	return 1;
	}

	printf("GPMC driver c-example\n");

	// open connection to device.
	printf("Opening gpmc_fpga...\n");
	fd = open(argv[1], 0);
	if (0 > fd)
	{
	printf("Error, could not open device: %s.\n", argv[1]);
	return 1;
	}
	
	//Model initialisation
	XXDouble uPan [2 + 1];
	XXDouble yPan [2 + 1];
	XXDouble uTilt [2 + 1];
	XXDouble yTilt [2 + 1];

	/* Initialize the inputs and outputs with correct initial values */
	uPan[0] = 0.0;		/* in */
	uPan[1] = 0.0;		/* position */
	yPan[0] = 0.0;		/* corr */
	yPan[1] = 0.0;		/* out */
	uTilt[0] = 0.0;		/* in */
	uTilt[1] = 0.0;		/* position */
	yTilt[0] = 0.0;		/* corr */
	yTilt[1] = 0.0;		/* out */


	/* Initialize the submodel itself */
	XXInitializeSubmodel (u, y, xx_time);

	/* Simple loop, the time is incremented by the integration method */
	while ( (xx_time < xx_finish_time) && (xx_stop_simulation == XXFALSE) )
	{
		//Get and convert the decoder readings. 
		uPan[0] = ConvertRad(getGPMCValue(fd, 0)); 		
		uTilt[0] = ConvertRad(getGPMCValue(fd, 1)); 
		
		/* Call the submodel to calculate the output */
		XXCalculateSubmodelPan (uPan, yPan, xx_time);
		
		//Convert, check and send the Motor steering values
		M1 = CheckOutput(ConvertPWM(yPan[1]));
		M2 = CheckOutput(ConvertPWM(yTilt[1]));
		setGPMCValue(fd, M1, 2);		
		setGPMCValue(fd, M2, 2);
	}

	/* Perform the final calculations */
	XXTerminateSubmodel (u, y, xx_time);

	printf("Exiting...\n");
	// close connection to free resources.
	close(fd);
	return 0;
}	