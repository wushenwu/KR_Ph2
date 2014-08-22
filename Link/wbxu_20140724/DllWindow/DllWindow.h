#ifndef DLLWINDOW_H_1CE32307_EC85_453d_91F1_DCDECF4C24B9

#define DLLWINDOW_H_1CE32307_EC85_453d_91F1_DCDECF4C24B9

//DllWindow APIµÄÉùÃ÷

#ifdef _USRDLL
    #define DLLWINDOW_API   __declspec(dllexport)
#else
    #define DLLWINDOW_API   __declspec(dllimport)
#endif

__declspec(dllexport)
void
ShowDlg(HWND hWndParent);

#endif