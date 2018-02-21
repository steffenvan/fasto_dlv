#include <stdio.h>
#include <stdbool.h>

int main (){

  bool x0 = (3 / 2 == 1);
  bool x1 = (~3 / 2 == ~2);
  bool x2 = (3 /~2 == ~2);
  bool x3 = (~3 /~2 == 1);

  printf ("first: %d\n", x0);
  printf ("second: %d\n", x1);
  printf ("third: %d\n", x2);
  printf ("fourth: %d\n", x3);

  return 0;
}
