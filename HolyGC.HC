#define GC_CAP 16384
U8 *gc[GC_CAP];
I64 gc_cnt=0;

U8 *GCMAlloc(I64 size)
{
  gc[gc_cnt]=MAlloc(size);
  return gc[gc_cnt++];
}

U0 GCClean()
{
  I64 i;
  for (i=0;i<gc_cnt;i++)
    Free(gc[i]);
  gc_cnt=0;
}
