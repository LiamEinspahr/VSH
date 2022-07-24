#include "test.h"
#include <iostream>

int main()
{
    Test* t = new Test(5);
    delete t;
    t = 0;
    return 0;
}