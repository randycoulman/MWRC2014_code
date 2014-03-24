#ifndef SafeResource_h
#define SafeResource_h

#include "support.h"

class SafeResource
{
public:
    SafeResource();
    ~SafeResource();

    Resource* get();

private:
    Resource* resource;
};

#endif
