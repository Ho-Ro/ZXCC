
#include "zxcc.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

static char cmdbuf[1024];

int main( int argc, char **argv ) {
    int n;

    strcpy( cmdbuf,"zxcc z80asm.com" );
    for ( n = 1; n < argc; n++ ) {
        ++argv;
        strcat( cmdbuf, " -" );
        strcat( cmdbuf, *argv );
    }
    puts( cmdbuf );
    return system(cmdbuf);
}
