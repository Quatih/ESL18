/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  xxmain.c
 *  subm:  PositionControllerPan
 *  model: Jiwy
 *  expmt: Jiwy
 *  date:  June 7, 2018
 *  time:  2:05:31 PM
 *  user:  Universiteit Twente
 *  from:  20-sim 4.7 Campus License
 *  build: 4.7.0.8692
 **********************************************************/

/* This file is a demo application of how the submodel function can 
 * be used. It uses the global time variables that are used by both
 * the submodel and the integration method.
 *
 * PLEASE NOTE: THIS IS AN EXAMPLE WHERE ALL INPUTS ARE ZERO ! 
 * USE YOUR OWN INPUTS INSTEAD!! ALSO THE SUBMODEL MIGHT SIMPLY 
 * NOT WORK CORRECTLY WITH INPUTS THAT ARE ZERO.
 */

/* 20-sim include files */
#include "xxsubmod.h"

/* The main function */
int main()
{
	XXDouble u [2 + 1];
	XXDouble y [2 + 1];

	/* Initialize the inputs and outputs with correct initial values */
	u[0] = 0.0;		/* in */
	u[1] = 0.0;		/* position */

	y[0] = 0.0;		/* corr */
	y[1] = 0.0;		/* out */


	/* Initialize the submodel itself */
	XXInitializeSubmodel (u, y, xx_time);

	/* Simple loop, the time is incremented by the integration method */
	while ( (xx_time < xx_finish_time) && (xx_stop_simulation == XXFALSE) )
	{
		/* Call the submodel to calculate the output */
		XXCalculateSubmodel (u, y, xx_time);
	}

	/* Perform the final calculations */
	XXTerminateSubmodel (u, y, xx_time);

	/* and we are done */
	return 0;
}

