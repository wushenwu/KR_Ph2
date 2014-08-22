#include <windows.h>
#include <stdio.h>

BOOL CALLBACK EnumChildProc(
                            HWND hwnd,      // handle to child window
                            LPARAM lParam   // application-defined value
                            )
{
    HWND hParent = GetParent(hwnd);
    if (hParent == (HWND)lParam)
    {
        //为子窗口
        printf("\t0x%08p\r\n", hwnd);

        //并遍历其子窗口
        EnumChildWindows(hwnd, EnumChildProc, (LPARAM)hwnd);
    }
    else
    {
        int n = 0;
    }
    return TRUE;
}


int
main(void)
{
    HWND hWnd = (HWND)0x00020094;
    printf("0x%08p\r\n", hWnd);

    ::EnumChildWindows(hWnd, EnumChildProc, (LPARAM)hWnd);

    return 0;
}