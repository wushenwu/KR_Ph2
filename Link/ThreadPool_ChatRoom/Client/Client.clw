; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CClientDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "Client.h"

ClassCount=4
Class1=CClientApp
Class2=CClientDlg
Class3=CAboutDlg

ResourceCount=4
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_CLIENT_DIALOG
Class4=CChatDlg
Resource4=IDD_DLG_CHAT

[CLS:CClientApp]
Type=0
HeaderFile=Client.h
ImplementationFile=Client.cpp
Filter=N

[CLS:CClientDlg]
Type=0
HeaderFile=ClientDlg.h
ImplementationFile=ClientDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=CClientDlg

[CLS:CAboutDlg]
Type=0
HeaderFile=ClientDlg.h
ImplementationFile=ClientDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_CLIENT_DIALOG]
Type=1
Class=CClientDlg
ControlCount=10
Control1=ID_STARTCLIENT,button,1342242817
Control2=ID_STOPCLIENT,button,1342242816
Control3=IDC_STATIC,button,1342177287
Control4=IDC_STATIC,button,1342177287
Control5=IDC_TALK,edit,1350631552
Control6=IDC_HISTORY,edit,1352728772
Control7=IDC_STATIC,button,1342177287
Control8=IDC_ONLINECLIENTS,listbox,1352728843
Control9=IDC_CHATMULTI,button,1342242819
Control10=IDC_BROADCAST,button,1342373891

[DLG:IDD_DLG_CHAT]
Type=1
Class=CChatDlg
ControlCount=4
Control1=IDC_STATIC,button,1342177287
Control2=IDC_CHAT_HISTORY,edit,1350631556
Control3=IDC_STATIC,button,1342177287
Control4=IDC_CHAT_SEND,edit,1350631552

[CLS:CChatDlg]
Type=0
HeaderFile=ChatDlg.h
ImplementationFile=ChatDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CChatDlg

