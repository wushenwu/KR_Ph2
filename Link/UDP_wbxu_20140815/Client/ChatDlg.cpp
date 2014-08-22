// ChatDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Client.h"
#include "ChatDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CChatDlg dialog


CChatDlg::CChatDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CChatDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CChatDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CChatDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CChatDlg)
	DDX_Control(pDX, IDC_CHAT_SEND, m_ChatSend);
	DDX_Control(pDX, IDC_CHAT_HISTORY, m_ChatHistory);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CChatDlg, CDialog)
	//{{AFX_MSG_MAP(CChatDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CChatDlg message handlers

BOOL CChatDlg::PreTranslateMessage(MSG* pMsg) 
{
    if (WM_KEYDOWN == pMsg->message
        && VK_RETURN == pMsg->wParam)
    {
        //获取当前焦点所在控件的ID
        int nCtrlID = GetFocus()->GetDlgCtrlID();
        
        if (IDC_CHAT_SEND == nCtrlID)
        {
            //获取控件中的信息，并向客户端发送
            TCHAR szLine[MAXBYTE] = {0};
            int nLen = m_ChatSend.GetLine(0, szLine, MAXBYTE);
            int nRet = m_MySocket.Send(szLine, nLen, 0);
            if (SOCKET_ERROR == nRet)
            {
                //do sth
            }
            
            //清空输入
            m_TalkEdit.SetSel(0, -1);
            m_TalkEdit.Clear();
            
            //更新自己的history
            UpdateHistory(CLIENT, szLine);
            
            return TRUE;    //已经处理完毕，不再由系统实现
        }      
    }
		
	return CDialog::PreTranslateMessage(pMsg);
}
