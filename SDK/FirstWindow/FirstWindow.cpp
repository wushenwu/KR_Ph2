/*
���ڳ���������̣�
1.WinMain����
2.��ơ�ע�ᴰ����
3.��������ʾ����
4.��Ϣѭ��
5.��д���̺���
*/

#include <windows.h>
#include <tchar.h>
#include <commctrl.h>   //�Կؼ��Ĵ���

#include "resource.h"
#include "FirstWindow_Notify.h"

#define MAX_LOADSTRING 100

HINSTANCE g_hInstance = NULL;
HWND g_hwndParent = NULL;
static int g_nCount = 0;

TCHAR szTitle[MAX_LOADSTRING]       = TEXT("MyFirstWindow");								// The title bar text
TCHAR szWindowClass[MAX_LOADSTRING] = TEXT("MyWndClass");								// The title bar text

//for List-View Control
int g_nColName = 10;
TCHAR g_szColName[10][16];
//int nflg = 0x0A;
tagInfoSet g_InfoFlg = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}; //(tagInfoSet &)nflg;//

int WINAPI
_tWinMain( HINSTANCE hInstance, 
          HINSTANCE hPrevInstance, 
          LPSTR lpCmdLine,          //ʹ��TCHAR *Ϊ�˻��A/W����Ӧ����
          int nShowCmd )
{
    g_hInstance = hInstance;

    //�߼��ؼ�����ͬʱҪ��comctl32.lib
    InitCommonControls();

    // Initialize global strings
    //LoadAllStrings();

    //��ơ�ע�ᴰ����
    if (0 == MyRegisterClass(hInstance, szWindowClass))
    {
        DWORD dwError = GetLastError();
        MessageBox(NULL, TEXT("MyRegisterClass Error"), TEXT("Error"), MB_OK);
        return -1;
    }

    //��������ʾ����
    if (FALSE == InitInstance(hInstance, nShowCmd, szWindowClass, szTitle))
    {
        DWORD dwError = GetLastError();
        MessageBox(NULL, TEXT("InitInstance Error"), TEXT("Error"), MB_OK);
        return -1;
    }

    //��Ϣѭ��
    MSG msg;
    BOOL bRet;

    //���ؿ�ݼ�
    HACCEL hAccel = LoadAccelerators(hInstance, MAKEINTRESOURCE(IDR_ACCELERATOR1));

    while ((bRet = GetMessage(&msg, NULL, 0, 0)) != 0)  //not WM_QUIT
    {
        if (-1 == bRet) //error
        {
            break;
        }
        
        //if translated, already processed, should not process again by TranslateMessage
        if (TranslateAccelerator(msg.hwnd, hAccel, &msg))
        {
            continue;
        }

        //translate virtual-key messages into character messages
        TranslateMessage(&msg);
        DispatchMessage(&msg);
        
    }

    return 0;
}

/*
Function: registers a window class for subsequent use in calls to the CreateWindow or CreateWindowEx function. 
          by filling WNDCLASS and call RegisterClass
Return  : 0 for fails, otherwise a ATOM
*/
ATOM MyRegisterClass(HINSTANCE hInstance, TCHAR *pszWindowClass)
{
    WNDCLASS wc = {0};

    wc.style            = CS_VREDRAW | CS_HREDRAW; 
    wc.lpfnWndProc      = MyWndProc;                //���ڹ��̺���, a pointer to your WindowProc callback function
    wc.cbClsExtra       = 0;
    wc.cbWndExtra       = 0;
    wc.hInstance        = hInstance;                //Handle to the instance that contains the window procedure for the class
    wc.hIcon            = LoadIcon(NULL, IDI_WINLOGO);  //ͼ��
    wc.hCursor          = LoadCursor(NULL, IDC_ARROW);  //���
    wc.hbrBackground    = (HBRUSH)(COLOR_WINDOW + 1);         //������ɫ
    wc.lpszMenuName     = MAKEINTRESOURCE(IDR_MENU1); 
    wc.lpszClassName    = pszWindowClass;
    
    return RegisterClass(&wc);
}

/*
Function: ����������ʾ����

Return  : TRUE for success, FALSE for failed
*/
BOOL InitInstance(HINSTANCE hInstance, int nCmdShow, TCHAR *pszWindowClass, TCHAR *pszTitle)
{
    HWND hWnd;
    
    hWnd = CreateWindow(pszWindowClass,            //registered class name
                        pszTitle,                  //window title
                        WS_OVERLAPPEDWINDOW,
                        CW_USEDEFAULT, 
                        0, 
                        CW_USEDEFAULT, 
                        0, 
                        NULL, 
                        NULL, 
                        hInstance,  //On XP, is ignored
                        NULL);

    if (1 == g_nCount)
    {
        g_hwndParent = hWnd;
    }
    
    if (NULL == hWnd)
    {
        return FALSE;
    }
    
    ShowWindow(hWnd, nCmdShow);
    UpdateWindow(hWnd);
    
    return TRUE;
}

/*
Function: Application-defined function that processes messages sent to a window
*/
LRESULT CALLBACK MyWndProc(
                            HWND hwnd,      // handle to window
                            UINT uMsg,      // message identifier
                            WPARAM wParam,  // first message parameter
                            LPARAM lParam   // second message parameter
)
{
    switch(uMsg)
    {
    //������Ϣ�Ĵ���: WM_CREATE, WM_CLOSE, WM_DESTROY
    case WM_CREATE:
        {
            g_nCount++;
            break;       
        }
        
    case WM_CLOSE:
        {
            if (IDNO == MessageBox(NULL, _T("�Ƿ��˳�����"), NULL, MB_YESNO) 
                )
            {
                return TRUE;
            }

            break;
        }
        
    case WM_DESTROY:
        {
            if (0 == --g_nCount || g_hwndParent == hwnd)
            {
                 PostQuitMessage(0); //���̶߳���Ͷ��WM_QUIT��Ϣ
            }
            break;
        } 

    case WM_PAINT:
        {
            PAINTSTRUCT ps;
            HDC hdc = BeginPaint(hwnd, &ps);
            if (NULL == hdc)
            {
                //do sth
                break;
            }

            RECT rc;
            GetClientRect(hwnd, &rc);   //��ȡ�ͻ��������С
            SetTextColor(ps.hdc, RGB(255, 0, 0));
            DrawText(ps.hdc,
                    TEXT("Hello World"),
                    _tcsclen(TEXT("Hello World")),
                    &rc,
                    DT_SINGLELINE | DT_CENTER | DT_VCENTER
                );

            EndPaint(hwnd, &ps);  

            break;
        }

    //�������Ϣ�Ĵ���: WM_LBUTTONDOWN, WM_LBUTTONUP��
    case WM_LBUTTONDOWN:
        {
            OutputDebugString(TEXT("WM_LBUTTONDOWN"));
            InitInstance(g_hInstance, SW_SHOWNORMAL, szWindowClass, szTitle);
            break;
        }

    case WM_LBUTTONUP:
        {
            OutputDebugString(TEXT("WM_LBUTTONUP"));
            break;
        }

    //����Virtual-key Message
    case WM_KEYDOWN:
        {
            WPARAM VirtualKey = wParam;
            if (VK_F2 == VirtualKey)
            {
                OutputDebugString(TEXT("F2 Down"));

                CalcF2();
            }
            else if (VK_F3 == VirtualKey)
            {
                CalcF3();
            }
            else
            {
                VK2ASCII(hwnd, uMsg, wParam, lParam);
            }

            break;
        }

    case WM_CHAR:
        {
            TCHAR lpszBuff[MAXBYTE] = {0};
            wsprintf(lpszBuff, "WM_CHAR %c", wParam);
            OutputDebugString(lpszBuff); 
            break;
        }


    case WM_COMMAND:
        {
            OnCommand(hwnd, uMsg, wParam, lParam);
            break;
        }
    }
    
    return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

INT_PTR CALLBACK MyDialogProc(
                            HWND hwndDlg,  // handle to dialog box
                            UINT uMsg,     // message
                            WPARAM wParam, // first message parameter
                            LPARAM lParam  // second message parameter
)
{
    switch (uMsg)
    {
    case WM_INITDIALOG:
        {
            //OutputDebugString(TEXT("WM_INITDIALG"));

            //��ʼ���ؼ�
            InitListBox(hwndDlg);
            InitListCtrl(hwndDlg);

            break;
        }

    case WM_COMMAND:
        if (lParam != NULL)
        {
            WORD wID            = LOWORD(wParam);
            WORD wNotifyCode    = HIWORD(wParam);

            if (IDOK == wID || IDCANCEL == wID)
            {
                EndDialog(hwndDlg, 0);
                break;
            }
            
            //�������Կؼ�����Ϣ��
            //The Parent window of the List Box receives notification message through WM_COMMAND
            if (LBN_DBLCLK == wNotifyCode)
            {
                char szBuff[MAXBYTE];
                int nIndex = SendMessage((HWND)lParam, LB_GETCURSEL, 0, 0);
                SendMessage((HWND)lParam, LB_GETTEXT, (WPARAM)nIndex, (LPARAM)szBuff);
                MessageBox(NULL, szBuff, "ListBox", MB_OK); 
                break;
            }

            break;
        }

    //����ͨ����Ϣ
    case WM_NOTIFY:
        {
            int idCtrl = (int) wParam; 
            LPNMHDR pnmh = (LPNMHDR) lParam;

            //List Box����Ϣ���ݲ���ͨ��WM_NOTIFY,����û��Ч��
            if (LBN_DBLCLK == pnmh->code)
            {
                char szBuff[MAXBYTE];
                int nIndex = SendMessage((HWND)lParam, LB_GETCURSEL, 0, 0);
                SendMessage((HWND)lParam, LB_GETTEXT, (WPARAM)nIndex, (LPARAM)szBuff);
                MessageBox(NULL, szBuff, "ListBox", MB_OK); 
                break;
            }
            else if (LVN_ITEMCHANGED == pnmh->code )
            {
                LPNMLISTVIEW plv = (LPNMLISTVIEW)lParam;
                if (plv->uNewState)
                {
                    TCHAR szBuff[MAXBYTE];
                    wsprintf(szBuff, "Changed to %d", plv->iItem);
                    MessageBox(NULL, szBuff, NULL, MB_OK);
                }
                break;
            }
            
            break;
        }

    default:
        return FALSE;   //���û�д����򷵻�FALSE
    }

    return TRUE;
}

void
OnCommand(HWND hwnd, UINT uMsg,  WPARAM wParam, LPARAM lParam)
{
    WORD wNotifyCode = HIWORD(wParam); 
    WORD wID = LOWORD(wParam);          //identifier for menu, control, accelerator
    HWND hwndCtl = (HWND) lParam;

    //�Բ˵��Ĵ���IDM_Exit, IDM_New, IDM_About
    if (IDM_Exit == wID)
    {
        SendMessage(hwnd, WM_CLOSE, NULL, NULL);
        //DestroyWindow(hwnd);
    }
    else if (IDM_New == wID)
    {
        CreateNewWindow();    
    }
    else if (IDM_About == wID)
    {
        DialogBox(g_hInstance,
                 MAKEINTRESOURCE(IDD_DIALOG1),
                 hwnd,
                 (DLGPROC)MyDialogProc
                 );
    }
   
}

void
CreateNewWindow(void)
{    
    //��������ʾ����
    if (FALSE == InitInstance(g_hInstance, SW_SHOWNORMAL, szWindowClass, szTitle))
    {
        DWORD dwError = GetLastError();
        MessageBox(NULL, TEXT("InitInstance Error"), TEXT("Error"), MB_OK);
        return;
    }
}

void 
VK2ASCII(HWND hwnd, UINT uMsg,  WPARAM wParam, LPARAM lParam)
{
    UINT nVirtualKey = wParam;

    //��ȡ����״̬
    BYTE KeyState[256];
    if (0 == GetKeyboardState(KeyState))
    {
        //do sth
    }                
    
    //�����ת��Ascii
    UINT uScanCode = lParam >> 16 & 0xFF;//����ɨ����
    
    WORD wChar;
    ToAscii(nVirtualKey, uScanCode, KeyState, &wChar, 0);
    
    CHAR lpszBuff[MAXBYTE] = {0};
    wsprintf(lpszBuff, "WM_KEYDOWN %c", wChar);
                OutputDebugString(lpszBuff);    

}

/*
lParam: �ؼ������ ���ǿؼ�ΪNULL
wParam: 
������16λ����ݼ�Ϊ1�� �˵�Ϊ0�� Ҳ����Ϊ�ؼ�ͨ����
������16λ����ݼ���ID�� �˵���ID��Ҳ����Ϊ�ؼ���ID
*/
void 
CalcF2(void)
{
    //��������Ͷ����Ϣ, ����10 + 10 = ?  , �账��ؼ�
    HWND hWnd = FindWindow(NULL, "������");
    UINT aryCtrlID[] = {0x7D,   //  1
                        0x7C,   //  0
                        0x5C,   //  +
                        0x7D,   //  1
                        0x7C,   //  0
                        0x70    //  =
                        };

    if (NULL == hWnd)
    {
        return;
    }
    
    WPARAM wParam = NULL;
    LPARAM lParam = NULL;
    int nCount = sizeof(aryCtrlID) / sizeof(aryCtrlID[0]);
    for (int i = 0; i < nCount; i++)
    {
        wParam = BN_CLICKED << 16;   //�ؼ�ͨ����
        wParam += aryCtrlID[i];                     //�ؼ�ID
        PostMessage(hWnd, WM_COMMAND, wParam, lParam);
    }
}

/*
lParam: �ؼ������ ���ǿؼ�ΪNULL
wParam: 
������16λ����ݼ�Ϊ1�� �˵�Ϊ0�� Ҳ����Ϊ�ؼ�ͨ����
������16λ����ݼ���ID�� �˵���ID��Ҳ����Ϊ�ؼ���ID

  WORD wNotifyCode = HIWORD(wParam); 
  WORD wID = LOWORD(wParam);          //identifier for menu, control, accelerator
  HWND hwndCtl = (HWND) lParam;
  
    //�Բ˵��Ĵ���IDM_Exit, IDM_New, IDM_About
    if (IDM_Exit == wID)
*/
void 
CalcF3(void)
{
    //��������Ͷ����Ϣ, ����������Ϣ�� �账��menu
    HWND hWnd = FindWindow(NULL, "������");

    WORD wNotifyCode = 0;       
    WORD wID = 302;             //identifier for menu, important
    HWND hwndCtl = (HWND)(~0);     //�ǿؼ�

    LPARAM lParam = (LPARAM)hwndCtl;
    WPARAM wParam = (WPARAM)((wNotifyCode << 16) + wID);   
  
    PostMessage(hWnd, WM_COMMAND, wParam, lParam);
}

void InitListBox(HWND hwndDlg)
{
    //���ݸ����ھ������ȡ����ID�Ŀؼ����
    HWND hWnd = GetDlgItem(hwndDlg, IDC_LIST1);

    //��ؼ�������Ϣ����Ԥ��װ����Ϣ�����������Ӧ�Ĺ��ܡ�
    SendMessage(hWnd, LB_ADDSTRING, (WPARAM)0, (LPARAM)"�人");
    SendMessage(hWnd, LB_ADDSTRING, (WPARAM)0, (LPARAM)"����");
    SendMessage(hWnd, LB_ADDSTRING, (WPARAM)0, (LPARAM)"�Ϻ�");
}

void InitListCtrl(HWND hwndDlg)
{
    HWND hChild = GetDlgItem(hwndDlg, IDC_LIST2);
    
    //ѡ��ȫ�� 
    SendMessage(hChild, LVM_SETEXTENDEDLISTVIEWSTYLE, 
        (WPARAM)LVS_EX_FULLROWSELECT, 
        (LPARAM)LVS_EX_FULLROWSELECT);

    //������ʾ�ֶΣ�����Դ�м����ַ���
    LoadAllStrings();
    
    //������ʾ�ֶΣ���̬������ֶ�
    LVCOLUMN lvc;
    lvc.mask = LVCF_TEXT | LVCF_WIDTH;
    lvc.cx   = 100;
    for (int i = 0; i < g_nColName; i++)
    {
        lvc.pszText = g_szColName[i];
        SendMessage(hChild, LVM_INSERTCOLUMN, (WPARAM)i, (LPARAM)&lvc);
    }

    TCHAR (*pszTaskInfo)[MAXBYTE] = NULL;
    int nCount = 0;
    GetTaskInfo(&pszTaskInfo, &nCount);

    //�������
    LVITEM lv;
    lv.mask = LVIF_TEXT;
    
    for (int j = 0; j < nCount; j++)    //���������
    {
        //��pszTaskInfo[j] �����ֶηָ�ֱ���뵽����
        TCHAR seps[] = TEXT(" ");
        TCHAR *token;
        int k = 0;

        lv.iItem = j; 

        token = _tcstok(pszTaskInfo[j], seps);
        while (token != NULL)
        {
            lv.pszText = token;
            lv.iSubItem = k;
            if (0 == k)
            {
                SendMessage(hChild, LVM_INSERTITEM, (WPARAM)0, (LPARAM)&lv);
            }
            else
            {
                SendMessage(hChild, LVM_SETITEMTEXT, (WPARAM)j, (LPARAM)&lv);
            }
            
            k++;

            token = _tcstok( NULL, seps );
        } //end for ������ 
    }//end for ������

    if (pszTaskInfo != NULL)
    {
        delete[] pszTaskInfo;
        pszTaskInfo = NULL;
    }
}

void
LoadAllStrings(void)
{
    //Just a hack, do not do like this

    g_nColName = 0;
    for (int i = 0; i < 10; i++)
    {
        if ((int &)g_InfoFlg & (1 << i))
        {
            //LoadString(hInstance, IDS_STR_PID, szTitle, MAX_LOADSTRING);
            LoadString(g_hInstance, i + 1, g_szColName[i], 16);
            g_nColName++;
        }
    }
}

/*
TCHAR *m_pszImageName;
DWORD m_dwPID;
TCHAR *m_pszUserName;
DWORD m_dwSessionID;
DWORD m_dwCPU;
DWORD m_dwMemory;
DWORD m_dwHandleCount;
DWORD m_dwThreadCount;
DWORD m_dwUserObjects;
    DWORD m_dwGDIObjects;
*/
void
GetTaskInfo(TCHAR (**ppszTaskInfo)[MAXBYTE], int *pnCount)
{
    //Just for fun,
    tagTaskInfo tmp[10] = {
        {TEXT("System"), 4, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("explorer"), 1380, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("calc"), 1489, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("Notepad"), 1590, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("QQ"), 4989, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("WPS"), 5891, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("taskmgr"), 3767, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("wiz"), 1889, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("cmd"), 2389, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("tasklist"), 7896, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0}
    };

    *pnCount = 10;

    TCHAR (*pszTaskInfo)[MAXBYTE] = new TCHAR[10][MAXBYTE];

    //����g_InfoFlg�����Ӧ���ֶ�
    for (int i = 0; i < 10; i++)
    {
        pszTaskInfo[i][0] = '\0';
        if (g_InfoFlg.m_flgImage)
        {
            wsprintf(pszTaskInfo[i], "%s ", tmp[i].m_pszImageName);
        }

        if (g_InfoFlg.m_flgPID)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwPID);
        }

        if (g_InfoFlg.m_flgUser)
        {
            wsprintf(pszTaskInfo[i], "%s %s", pszTaskInfo[i], tmp[i].m_pszUserName);
        }

        if (g_InfoFlg.m_flgSession)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwSessionID);
        }

        if (g_InfoFlg.m_flgCPU)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwCPU);
        }

        if (g_InfoFlg.m_flgMemory)
        {
            wsprintf(pszTaskInfo[i], "%s %dK", pszTaskInfo[i], tmp[i].m_dwMemory);
        }

        if (g_InfoFlg.m_flgHandle)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwHandleCount);
        }

        if (g_InfoFlg.m_flgThread)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwThreadCount);
        }

        if (g_InfoFlg.m_flgUsrObj)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwUserObjects);
        }

        if (g_InfoFlg.m_flgGDIObj)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwGDIObjects);
        }
    } 

    *ppszTaskInfo = pszTaskInfo;
}


