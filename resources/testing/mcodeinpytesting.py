import random
import time

def testWithArray(n):
    arr = [random.randint(0,1000000000) for i in range(n)]
    start = time.time()
    mergeSort(arr)
    end = time.time()
    timeelapsed = end - start
    print("(size = ", n ,"): " , timeelapsed)