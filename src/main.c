#include <stdio.h>
#include "add_sub.h"
#include "mul_div.h"

int main() {
    int a = 10, b = 5;
    printf("Add: %d\n", add(a, b));
    printf("Sub: %d\n", sub(a, b));
    printf("Mul: %d\n", mul(a, b));
    printf("Div: %d\n", divide(a, b)); 
    printf("Square: %d\n", square(b)); 
    printf("cube: %d\n", cube(5));
    return 0;
}
