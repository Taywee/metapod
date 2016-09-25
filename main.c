/* Copyright © 2016 Taylor C. Richberger <taywee@gmx.com>
 * This code is released under the license described in the LICENSE file
 */

#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>

int main()
{
    if (geteuid() != 0)
    {
        fputs("This program must be run as root\n", stderr);
        return 1;
    }
    return 0;
}
