#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

void testWithArray(int n);
void swap(int *xp, int *yp);
void bubbleSort(int arr[], int n);
 
void bubbleSort(int arr[], int n)
{
   int i, j;
   bool swapped;
   for (i = 0; i < n-1; i++)
   {
     swapped = false;
     for (j = 0; j < n-i-1; j++)
     {
        if (arr[j] > arr[j+1])
        {
           swap(&arr[j], &arr[j+1]);
           swapped = true;
        }
     }
     if (swapped == false)
        break;
   }
}