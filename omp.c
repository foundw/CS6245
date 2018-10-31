#include <stdio.h>

int main() {
    int n = 1000;
    int k = 3000;
    int a[n][k];
#pragma omp parallel for
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < k; ++j) {
#pragma omp critical
            {
                a[i][j] = 0;
                a[i][j] += i + j;
            }


        }
    }


    return 0;
}