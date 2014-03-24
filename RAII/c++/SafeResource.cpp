#include "SafeResource.h"
#include "support.h"

SafeResource::SafeResource() :
    resource(acquireResource())
{
}

SafeResource::~SafeResource()
{
    releaseResource(resource);
}

Resource* SafeResource::get()
{
    return resource;
}
