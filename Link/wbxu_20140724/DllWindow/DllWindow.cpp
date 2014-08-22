// DllWindow.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"

#include "DllWindow.h"
#include "resource.h"

HINSTANCE g_hDll;

BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
    g_hDll = (HINSTANCE)hModule;
    return TRUE;
}

INT_PTR 
CALLBACK 
DialogProc(
            HWND hwndDlg,  // handle to dialog box
            UINT uMsg,     // message
            WPARAM wParam, // first message parameter
            LPARAM lParam  // second message parameter
            )
{
    if (WM_COMMAND == uMsg)
    {
        WORD wID = LOWORD(wParam); 
        if (IDOK == wID
            || IDCANCEL == wID)
        {
            ::EndDialog(hwndDlg, 0);
            return TRUE;
        }
    }

    return FALSE;
}


/*
INT_PTR DialogBox(
    HINSTANCE hInstance,  // handle to module
    LPCTSTR lpTemplate,   // dialog box template
    HWND hWndParent,      // handle to owner window
    DLGPROC lpDialogFunc  // dialog box procedure
    );
*/
void
ShowDlg(HWND hWndParent)
{
    ::DialogBox(g_hDll,
                MAKEINTRESOURCE(IDD_DIALOG1),
                hWndParent,
                (DLGPROC)DialogProc);
}

