; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CRCT_ServerDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "RCT_Server.h"

ClassCount=4
Class1=CRCT_ServerApp
Class2=CRCT_ServerDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_RCT_SERVER_DIALOG

[CLS:CRCT_ServerApp]
Type=0
HeaderFile=RCT_Server.h
ImplementationFile=RCT_Server.cpp
Filter=N

[CLS:CRCT_ServerDlg]
Type=0
HeaderFile=RCT_ServerDlg.h
ImplementationFile=RCT_ServerDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=RCT_ServerDlg.h
ImplementationFile=RCT_ServerDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_RCT_SERVER_DIALOG]
Type=1
Class=CRCT_ServerDlg
ControlCount=2
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816

