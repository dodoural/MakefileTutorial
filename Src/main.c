#include <stdio.h>
#include "pThreadFuncs.h"
#include "ops.h"



int main()
{
    pthread_t tid;
    int err;
    int y = 0;
    int x = 0;
    if(pthread_create(&tid, NULL, increment, &x))
    {
        fprintf(stderr, "Error creating thread\n");
        return -1;
    }

    incrementNum(&y);

   if(pthread_join(tid, NULL))
   {

        fprintf(stderr, "Error joining thread\n");
        return -1;
   }

   printf("Value of x & y = %d - %d\n\r",x,y);
   return 0;

}