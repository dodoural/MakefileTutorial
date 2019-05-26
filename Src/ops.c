#include "ops.h"
#include "stdio.h"

void incrementNum(int *x)
{
    while(++(*x) <100);
    printf("Number increment is finished\n\r");

}