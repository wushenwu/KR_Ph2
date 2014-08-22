#include <windows.h>
#include <stdio.h>
#include <tchar.h>

#include "StaticLib.h"

int g_nData = 0x1234;

int CALL
Add(int x, int y)
{
    return x + y;
}

void CALL
ShowCurPath(void)
{
    TCHAR Buffer[MAXBYTE];

    GetCurrentDirectory(MAXBYTE, Buffer);

    printf("%s\r\n", Buffer);
}