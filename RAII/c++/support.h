#ifndef SUPPORT_H
#define SUPPORT_H

typedef int Resource;

Resource* acquireResource();
void releaseResource(Resource* resource);
void bar(Resource* resource);
int baz(Resource* resource);
void foo();

#endif
