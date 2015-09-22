#include <stdio.h>


int main(int argc, char* argv[]) {
   unsigned long long int m, n, a, p, q;
   scanf("%llu %llu %llu", &m, &n, &a);
   p = m % a;
   q = n % a;
   printf("%llu\n", (m / a + (p > 0)) * (n / a + (q > 0)));
   return 0;
}
