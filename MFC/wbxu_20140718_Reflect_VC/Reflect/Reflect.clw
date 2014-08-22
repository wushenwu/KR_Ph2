; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CReflectDlg
LastTemplate=CEdit
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "Reflect.h"

ClassCount=5
Class1=CReflectApp
Class2=CReflectDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_REFLECT_DIALOG
Resource2=IDR_MAINFRAME
Class4=CMyBTN
Class5=CMyEdit
Resource3=IDD_ABOUTBOX

[CLS:CReflectApp]
Type=0
HeaderFile=Reflect.h
ImplementationFile=Reflect.cpp
Filter=N

[CLS:CReflectDlg]
Type=0
HeaderFile=ReflectDlg.h
ImplementationFile=ReflectDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=CReflectDlg

[CLS:CAboutDlg]
Type=0
HeaderFile=ReflectDlg.h
ImplementationFile=ReflectDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_REFLECT_DIALOG]
Type=1
Class=CReflectDlg
ControlCount=4
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_BUTTON1,button,1342242816
Control4=IDC_EDIT1,edit,1350631552

[CLS:CMyBTN]
Type=0
HeaderFile=mybtn.h
ImplementationFile=MyBTN.cpp
BaseClass=CButton
Filter=W
VirtualFilter=BWC
LastObject=CMyBTN

[CLS:CMyEdit]
Type=0
HeaderFile=myedit.h
ImplementationFile=myedit.cpp
BaseClass=CEdit
Filter=W
LastObject=CMyEdit
VirtualFilter=WC

