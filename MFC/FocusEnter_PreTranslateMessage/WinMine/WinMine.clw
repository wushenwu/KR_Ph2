; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CMyBTN
LastTemplate=CButton
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "WinMine.h"

ClassCount=5
Class1=CWinMineApp
Class2=CWinMineDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Class5=CMyBTN
Resource3=IDD_WINMINE_DIALOG

[CLS:CWinMineApp]
Type=0
HeaderFile=WinMine.h
ImplementationFile=WinMine.cpp
Filter=N

[CLS:CWinMineDlg]
Type=0
HeaderFile=WinMineDlg.h
ImplementationFile=WinMineDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=WinMineDlg.h
ImplementationFile=WinMineDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_WINMINE_DIALOG]
Type=1
Class=CWinMineDlg
ControlCount=0

[CLS:CMyBTN]
Type=0
HeaderFile=mybtn.h
ImplementationFile=mybtn.cpp
BaseClass=CButton
Filter=W

