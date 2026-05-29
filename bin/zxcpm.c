/* zxcc CP/M emulator program that avoids the zxcc argument translation */

#include "zxcc.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

static char cmdbuf[1024];


int main(int argc, char **argv) {
    int n;

    if ( argc < 2 ) {
        printf( "usage: zxcpm COMMAND [ ARG ... ]\n");
        return -1;
    } else {
        strcpy( cmdbuf, "zxcc " );
        strcat( cmdbuf, argv[1] ); // CP/M program name
        for ( n = 2; n < argc; n++ ) {
            // prepend all following arguments with '-'
            // to avoid the zxcc argument parsing
            // and file name conversion needed for HITECH-C
            strcat( cmdbuf, " -" );
	    strcat( cmdbuf, argv[n] );
	}
	return system( cmdbuf );
    }
}
