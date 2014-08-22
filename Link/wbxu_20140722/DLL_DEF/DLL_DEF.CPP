#include <windows.h>
#include <stdio.h>

#include "DLL_DEF.H"

int g_nData = 0x1234;

void 
CALL 
SayHello(void)
{
    printf("Hello World!!\r\n");
    ::MessageBox(NULL, TEXT("SayHello"), TEXT("DLL_DEF"), MB_OK);

}

int *
CALL 
GetAddr(void)
{
    return &g_nData;   
}

int 
CALL 
Add(int a, int b)
{
    return a + b;
}
