#include <windows.h>
#include <stdio.h>
#include <tchar.h>

#include "dll.h"

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

    HMODULE hMod = GetModuleHandle(TEXT("DLL"));
    GetModuleFileName(hMod, Buffer, sizeof(Buffer));
    printf("%s\r\n", Buffer);

    printf("Done\r\n");
}