#include "support.h"
#include <iostream>
#include <stdexcept>

Resource* acquireResource()
{
    std::cout << "Acquiring resource" << std::endl;
    return NULL;
}

void releaseResource(Resource* resource)
{
    std::cout << "Releasing resource" << std::endl;
}

void bar(Resource* resource)
{
    throw std::runtime_error("oops!");
}

int baz(Resource* resource)
{
    return 22;
}
