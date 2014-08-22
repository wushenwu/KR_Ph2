; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CMyButtonProxy
LastTemplate=CListBox
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "DDX.h"

ClassCount=6
Class1=CDDXApp
Class2=CDDXDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Class4=CMyButtonProxy
Class5=CMyEditProxy
Class6=CMyListBoxProxy
Resource3=IDD_DDX_DIALOG

[CLS:CDDXApp]
Type=0
HeaderFile=DDX.h
ImplementationFile=DDX.cpp
Filter=N
LastObject=CDDXApp

[CLS:CDDXDlg]
Type=0
HeaderFile=DDXDlg.h
ImplementationFile=DDXDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=IDC_BUTTON1

[CLS:CAboutDlg]
Type=0
HeaderFile=DDXDlg.h
ImplementationFile=DDXDlg.cpp
Filter=D
LastObject=IDOK

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_DDX_DIALOG]
Type=1
Class=CDDXDlg
ControlCount=5
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_EDIT1,edit,1350639744
Control4=IDC_BUTTON1,button,1342242816
Control5=IDC_LIST1,listbox,1352728835

[CLS:CMyButtonProxy]
Type=0
HeaderFile=MyButtonProxy.h
ImplementationFile=MyButtonProxy.cpp
BaseClass=CButton
Filter=W
VirtualFilter=BWC
LastObject=CMyButtonProxy

[CLS:CMyEditProxy]
Type=0
HeaderFile=MyEditProxy.h
ImplementationFile=MyEditProxy.cpp
BaseClass=CEdit
Filter=W
VirtualFilter=WC
LastObject=CMyEditProxy

[CLS:CMyListBoxProxy]
Type=0
HeaderFile=MyListBoxProxy.h
ImplementationFile=MyListBoxProxy.cpp
BaseClass=CListBox
Filter=W
VirtualFilter=bWC
LastObject=CMyListBoxProxy

