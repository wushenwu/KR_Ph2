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
        //��ȡ��ǰ�������ڿؼ���ID
        int nCtrlID = GetFocus()->GetDlgCtrlID();
        
        if (IDC_CHAT_SEND == nCtrlID)
        {
            //��ȡ�ؼ��е���Ϣ������ͻ��˷���
            TCHAR szLine[MAXBYTE] = {0};
            int nLen = m_ChatSend.GetLine(0, szLine, MAXBYTE);
            int nRet = m_MySocket.Send(szLine, nLen, 0);
            if (SOCKET_ERROR == nRet)
            {
                //do sth
            }
            
            //�������
            m_TalkEdit.SetSel(0, -1);
            m_TalkEdit.Clear();
            
            //�����Լ���history
            UpdateHistory(CLIENT, szLine);
            
            return TRUE;    //�Ѿ�������ϣ�������ϵͳʵ��
        }      
    }
		
	return CDialog::PreTranslateMessage(pMsg);
}
