#include "support.h"
#include <iostream>

void foo()
{
    Resource* resource = acquireResource();

    try
    {
        bar(resource);

        if (baz(resource) == 42)
        {
            std::cout << "Completed successfully!"
                      << std::endl;
        }
    }
    catch(std::exception& e)
    {
        releaseResource(resource);
        throw;
    }

    releaseResource(resource);
}
