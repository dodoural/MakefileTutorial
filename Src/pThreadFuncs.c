
#include "pThreadFuncs.h"
#include "stdio.h"

void *increment(void * intPtr)
{

/* increment x to 100 */
int *tmpPtr = (int *)intPtr;
while(++(*tmpPtr) < 100);
printf("Number increment on thread %ld is finished\n", (long)pthread_self());
return NULL;

}

