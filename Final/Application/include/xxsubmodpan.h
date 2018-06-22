/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  xxsubmod.h
 *  subm:  PositionControllerPan
 *  model: Jiwy
 *  expmt: Jiwy
 *  date:  June 7, 2018
 *  time:  2:05:31 PM
 *  user:  Universiteit Twente
 *  from:  20-sim 4.7 Campus License
 *  build: 4.7.0.8692
 **********************************************************/

/* This file describes the model functions
   that are supplied for computation.

   The model itself is the xxmodel.c file
*/

#ifndef XX_SUBMODPAN_H
#define XX_SUBMODPAN_H

/* Our own include files */
#include "xxmodelpan.h"

/* Submodel I/O variables */
extern XXInteger xx_number_of_inputspan;
extern XXInteger xx_number_of_outputspan;
/* The names of the variables as used in the arrays above */
extern XXString xx_input_namespan[];
extern XXString xx_output_namespan[];


/* The submodel functions */
void XXInitializeSubmodelpan (XXDouble *u, XXDouble *y, XXDouble t);
void XXCalculateSubmodelpan (XXDouble *u, XXDouble *y, XXDouble t);
void XXTerminateSubmodelpan (XXDouble *u, XXDouble *y, XXDouble t);
void XXCopyInputsToVariablespan (XXDouble *u);
void XXCopyVariablesToOutputspan (XXDouble *y);

#endif
