#include <windows.h>
#include <stdio.h>

static int i = 0;
BOOL CALLBACK EnumChildProc(
                            HWND hwnd,      // handle to child window
                            LPARAM lParam   // application-defined value
                            )
{
    printf("%d  %p\r\n", i, hwnd);
    i++;

    return TRUE;
}

void TestEnumChildWindows()
{
    HWND hDeskTop = ::GetDesktopWindow();
    
    ::EnumChildWindows(hDeskTop, EnumChildProc, (LPARAM)hDeskTop);
}

BOOL CALLBACK EnumWindowsProc(
                              HWND hwnd,      // handle to parent window
                              LPARAM lParam   // application-defined value
                              )
{
    printf("%d  %p\r\n", i, hwnd);
    i++;

    return TRUE;
}

void TestEnumWindows()
{
    HWND hDeskTop = ::GetDesktopWindow();

    EnumWindows(EnumWindowsProc,(LPARAM) hDeskTop);
}

void EnumZOrder(HWND hCurrent, char *szTab)
{
    //输出自身
    printf("%s%d  %p\r\n", szTab, i, hCurrent);
    i++;

    HWND hChild = NULL;
    HWND hNext  = NULL;

    //先来遍历child
    hChild = ::GetWindow(hCurrent, GW_CHILD);
    if (hChild != NULL)
    {
        char szTabTmp[MAXBYTE];
        wsprintf(szTabTmp, "%s\t", szTab);

        EnumZOrder(hChild, szTabTmp);
    }

    //再来遍历next
    hNext = ::GetWindow(hCurrent, GW_HWNDNEXT);
    if (hNext != NULL)
    {
        EnumZOrder(hNext, szTab);
    }
}

void TestZOrder()
{
    HWND hDeskTop = ::GetDesktopWindow();
    
    EnumZOrder(hDeskTop, "");
}

int
main(void)
{
    //TestEnumWindows();

    //TestEnumChildWindows();

    TestZOrder();

    return 0;
}