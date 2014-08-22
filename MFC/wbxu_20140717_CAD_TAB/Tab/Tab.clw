; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CTabDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "Tab.h"

ClassCount=6
Class1=CTabApp
Class2=CTabDlg
Class3=CAboutDlg

ResourceCount=6
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_TAB_DIALOG
Resource4=IDD_DIALOG1
Resource5=IDD_DIALOG2
Class4=CPage1
Class5=CPage2
Class6=CPage3
Resource6=IDD_DIALOG3

[CLS:CTabApp]
Type=0
HeaderFile=Tab.h
ImplementationFile=Tab.cpp
Filter=N

[CLS:CTabDlg]
Type=0
HeaderFile=TabDlg.h
ImplementationFile=TabDlg.cpp
Filter=D
LastObject=CTabDlg
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=TabDlg.h
ImplementationFile=TabDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_TAB_DIALOG]
Type=1
Class=CTabDlg
ControlCount=1
Control1=IDC_TAB1,SysTabControl32,1342177280

[DLG:IDD_DIALOG1]
Type=1
Class=CPage2
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_BUTTON1,button,1342242816

[DLG:IDD_DIALOG2]
Type=1
Class=CPage1
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_BUTTON1,button,1342242816

[DLG:IDD_DIALOG3]
Type=1
Class=CPage3
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_BUTTON1,button,1342242816

[CLS:CPage1]
Type=0
HeaderFile=Page1.h
ImplementationFile=Page1.cpp
BaseClass=CDialog
Filter=D
LastObject=CPage1

[CLS:CPage2]
Type=0
HeaderFile=Page2.h
ImplementationFile=Page2.cpp
BaseClass=CDialog
Filter=D
LastObject=CPage2

[CLS:CPage3]
Type=0
HeaderFile=Page3.h
ImplementationFile=Page3.cpp
BaseClass=CDialog
Filter=D
LastObject=CPage3

