#include <stdio.h>
#include <assert.h>
#include "add_sub.h"
#include "mul_div.h"

int main()
{
    assert(add(2, 3) == 5);
    assert(sub(5, 3) == 2);        
    assert(mul(2, 3) == 6);        
    assert(divide(6, 0) == 0);
    assert(square(5) == 25);
    assert(cube(5) == 125);
    printf("All tests passed.\n");
    return 0;
}