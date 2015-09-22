#include <stdio.h>


int main(int argc, char* argv[]) {
    int n, k, i, s, t, r = 0;
    scanf("%d %d", &n, &k);
    for (i = 0; i < k; i++) {
        scanf("%d", &s);
        if (s > 0) r++;
    }
    for (; i < n; i++) {
        scanf("%d", &t);
        if (!t || t < s) break;
        r++;
    }
    printf("%d\n", r);
    return 0;
}
