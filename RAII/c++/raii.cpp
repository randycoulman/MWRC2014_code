#include "SafeResource.h"
#include "support.h"
#include <iostream>

void foo()
{
    SafeResource resource;
    bar(resource.get());

    if (baz(resource.get()) != 42) return;

    std::cout << "Completed successfully!"
              << std::endl;
}
