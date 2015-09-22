#include <stdio.h>
#include <stdlib.h>


int main() {
    int i, j, n;
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            scanf("%d", &n);
            if (n == 1) {
                printf("%d\n", abs(i - 2) + abs(j - 2));
                return 0;
            }
        }
    }
    return 1;
}
