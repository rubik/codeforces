#include <stdio.h>


int main(int argc, char* argv[]) {
    int w;
    scanf("%d", &w);
    if (w == 2 || w & 1) puts("NO");
    else puts("YES");
    return 0;
}
