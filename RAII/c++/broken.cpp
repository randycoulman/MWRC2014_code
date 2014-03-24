#include "support.h"
#include <iostream>

void foo()
{
    Resource* resource =
        acquireResource();
    bar(resource);

    if (baz(resource) != 42) return;

    std::cout << "Completed successfully!"
              << std::endl;

    releaseResource(resource);
}
