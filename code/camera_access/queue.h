#ifndef QUEUE_H
#define QUEUE_H

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>

typedef struct {
	uint8_t *queue;
	const uint8_t *base_addr;
	const uint8_t *end_addr;
	int var_size;
	int depth;
	uint8_t *pTX;
	uint8_t *pRX;
	uint8_t count;
}queue_descr_t;


/*******************************************************************************
 * Prototypes
 ******************************************************************************/
bool queue_init(queue_descr_t *, size_t, size_t);
void queue_deinit(queue_descr_t *);
bool queue_push(queue_descr_t * , void *); 
bool queue_pop(queue_descr_t * , void *);

#endif
