; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
ClassCount=2
Class1=CMFCSharedDLLApp
LastClass=CMyDialog
NewFileInclude2=#include "MFCSharedDLL.h"
ResourceCount=1
NewFileInclude1=#include "stdafx.h"
Class2=CMyDialog
LastTemplate=CDialog
Resource1=IDD_DIALOG1

[CLS:CMFCSharedDLLApp]
Type=0
HeaderFile=MFCSharedDLL.h
ImplementationFile=MFCSharedDLL.cpp
Filter=N

[DLG:IDD_DIALOG1]
Type=1
Class=CMyDialog
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_BUTTON1,button,1342242816

[CLS:CMyDialog]
Type=0
HeaderFile=MyDialog.h
ImplementationFile=MyDialog.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

