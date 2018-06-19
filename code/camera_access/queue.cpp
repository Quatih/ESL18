#include "queue.h"

bool queue_init(queue_descr_t *descr, size_t depth, size_t var_size)
{
	descr->queue = (uint8_t *)calloc(depth, var_size);
	if(descr->queue == NULL)
		return false;
	descr->base_addr = descr->queue;
	descr->end_addr = descr->base_addr + (depth*var_size);
	descr->var_size = var_size;
	descr->depth = depth;
	descr->pTX = descr->pRX = (uint8_t *)descr->base_addr;
	descr->count = 0;
	return true;
}

void queue_deinit(queue_descr_t *descr)
{
	free(descr->queue);
	free(descr->pTX);
	free(descr->pRX);
	descr->pTX = NULL;
	descr->pRX = NULL;
}

bool queue_push(queue_descr_t *descr, void *data)
{
	uint8_t *next = descr->pTX + descr->var_size;

	if(next >= (descr->end_addr))			//Wrap around
	{
		next = (uint8_t *)descr->base_addr;
	}

	if(next == descr->pRX)						//Buffer full
	{
		return false;
	}

	memcpy(next, (uint8_t *)data, descr->var_size);
	descr->pTX = next;
	descr->count++;
	return true;
	
}

bool queue_pop(queue_descr_t *descr, void *data)
{
	if(descr->pTX == descr->pRX)
	{
		return false;
	}
	uint8_t *next = descr->pRX + descr->var_size;
	
	if(next >= (uint8_t *)descr->end_addr)			//Wrap around
	{
		next = (uint8_t *)descr->base_addr;
	}
	
	memcpy(data, next, descr->var_size);
	descr->pRX = next;
	descr->count--;
	return true;
}
