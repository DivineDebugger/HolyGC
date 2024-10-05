# HolyGC

A tiny wrapper for TempleOS to automatically free allocated memory.

## Setup

Write the contents of [HolyGC.HC](./HolyGC.HC) into a file called ```HolyGC.HC``` in your own TempleOS machine, then just include the file into your project.

## Usage

Assuming ```HolyGC.HC``` is in the home directory:

```hc
#include "::Home/HolyGC.HC"
```

Which allows you to use the functiosn ```GCMAlloc``` and ```GCClean```.

### Functions

Same as ```MAlloc``` but frees the block when ```GCClean``` is called.
```hc
U8 *GCMAlloc(I64 size)
```

<br>

Frees every block allocated by ```GCMAlloc```.
```hc
U0 GCClean()
```
