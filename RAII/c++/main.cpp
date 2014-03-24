#include "support.h"
#include <iostream>

int main()
{
    try
    {
        foo();
    }
    catch(std::exception& e)
    {
        std::cerr << "Caught exception: "
                  << e.what()
                  << std::endl;
        exit(1);
    }
}
