; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CProcessDlg
LastTemplate=CListCtrl
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "process.h"

ClassCount=4
Class1=CProcessApp
Class2=CProcessDlg
Class3=CAboutDlg

ResourceCount=4
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Class4=CMyListCtrl
Resource3=IDD_PROCESS_DIALOG
Resource4=IDD_DIALOG1

[CLS:CProcessApp]
Type=0
HeaderFile=process.h
ImplementationFile=process.cpp
Filter=N

[CLS:CProcessDlg]
Type=0
HeaderFile=processDlg.h
ImplementationFile=processDlg.cpp
Filter=D
LastObject=IDC_WNDNAME
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=processDlg.h
ImplementationFile=processDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_PROCESS_DIALOG]
Type=1
Class=CProcessDlg
ControlCount=14
Control1=IDC_LIST_PROCESS,SysListView32,1350631441
Control2=IDC_BTN_EXIT_PROCESS,button,1342242816
Control3=IDC_BTN_UPDATE,button,1342242816
Control4=IDC_BTN_ENUM_WINDOW,button,1342242816
Control5=IDC_BTN_ENUM_WINDOW2,button,1342242816
Control6=IDC_STATIC,static,1342308352
Control7=IDC_EDIT_PID,edit,1350631552
Control8=IDC_BTN_INJECT,button,1342242816
Control9=IDC_BTN_UNLOAD,button,1342242816
Control10=IDC_STATIC,static,1342308352
Control11=IDC_EDIT_PATH,edit,1350631552
Control12=IDC_BTN_PATH,button,1342242816
Control13=IDC_WNDNAME,edit,1350631552
Control14=IDC_WND,static,1342308352

[CLS:CMyListCtrl]
Type=0
HeaderFile=MyListCtrl.h
ImplementationFile=MyListCtrl.cpp
BaseClass=CListCtrl
Filter=W

[DLG:IDD_DIALOG1]
Type=1
Class=?
ControlCount=2
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816

