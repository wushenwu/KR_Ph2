; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CDynamicSubClassDlg
LastTemplate=CButton
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "DynamicSubClass.h"

ClassCount=4
Class1=CDynamicSubClassApp
Class2=CDynamicSubClassDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Class4=CMyButton
Resource3=IDD_DYNAMICSUBCLASS_DIALOG

[CLS:CDynamicSubClassApp]
Type=0
HeaderFile=DynamicSubClass.h
ImplementationFile=DynamicSubClass.cpp
Filter=N

[CLS:CDynamicSubClassDlg]
Type=0
HeaderFile=DynamicSubClassDlg.h
ImplementationFile=DynamicSubClassDlg.cpp
Filter=D
LastObject=CDynamicSubClassDlg
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=DynamicSubClassDlg.h
ImplementationFile=DynamicSubClassDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_DYNAMICSUBCLASS_DIALOG]
Type=1
Class=CDynamicSubClassDlg
ControlCount=4
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_BUTTON1,button,1342242816
Control4=IDC_BUTTON2,button,1342242816

[CLS:CMyButton]
Type=0
HeaderFile=MyButton.h
ImplementationFile=MyButton.cpp
BaseClass=CButton
Filter=W
LastObject=CMyButton
VirtualFilter=BWC

