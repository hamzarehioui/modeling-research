#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

void testWithArray(int n){

   int array[n];

   srand(time(NULL));

   for(int i=0;i < n ;i++){
      array[i]=(rand()%1000000000);
   }

   float startTime = (float)clock()/CLOCKS_PER_SEC;

   bubbleSort(array, n);

   float endTime = (float)clock()/CLOCKS_PER_SEC;

   float timeElapsed = endTime - startTime;

   printf("(size = %d): %lf\n", n, timeElapsed);

}
