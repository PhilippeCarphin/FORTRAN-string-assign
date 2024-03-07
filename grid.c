#include "grid.h"
#include <stdio.h>
#include <string.h>

int Grid_print(TGrid* grid){
    // It looks like the compiler places NUL chars at the end of the string
    // even if it doesn't have to.
    fprintf(stderr, "Grid ID: '%.14s'\n", grid->Id);
    fprintf(stderr, "Grid->NI = %d\n", grid->NI);
    return strncmp("OCEAN", grid->Id, 5);
}

