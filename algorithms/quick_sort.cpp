#include <stdio.h>



void sort(int *a, int start, int end) {
    int i = start;
    int j = end;
    int t;

    int x = a[(i + j) / 2];
    while (i <= j) {
        while(a[j] > x) j--;
        while(a[i] < x) i++;

        printf("i:%d; j:%d\n", i, j);
        if (i <= j) {
        t = a[i];
        a[i] = a[j];
        a[j] = t;
        i++;
        j--;
        }

    for (int ii = start; ii <= end; ii++) {
        printf("%d, ", a[ii]);
    }

    printf("\n\n");
    }

    printf("s:%d, e:%d\n", start, end);
    if (start < j)
    sort(a, start, j);
    if (i < end)
    sort(a, i, end);
}


int main() {
    int n = 10;
    int array[] = {4,7,9,2,4,8,5,1,5,6};

    printf("Hello Cloud\n");


    sort(array, 0, n - 1);
    for (int i = 0; i < n; i++) {
        printf("%d, ", array[i]);
    }
    printf("\n");
    return 0;
}
