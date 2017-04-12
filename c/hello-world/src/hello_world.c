#include <stdio.h>
#include <stddef.h>
#include "hello_world.h"

void hello(char *buffer, const char *name)
{
  if (name != NULL) { sprintf(buffer, "Hello, %s!", name); }
  else { sprintf(buffer, "Hello, World!"); }
}
