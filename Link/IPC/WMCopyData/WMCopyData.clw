; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CWMCopyDataDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "WMCopyData.h"

ClassCount=4
Class1=CWMCopyDataApp
Class2=CWMCopyDataDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_WMCOPYDATA_DIALOG

[CLS:CWMCopyDataApp]
Type=0
HeaderFile=WMCopyData.h
ImplementationFile=WMCopyData.cpp
Filter=N

[CLS:CWMCopyDataDlg]
Type=0
HeaderFile=WMCopyDataDlg.h
ImplementationFile=WMCopyDataDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=WMCopyDataDlg.h
ImplementationFile=WMCopyDataDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_WMCOPYDATA_DIALOG]
Type=1
Class=CWMCopyDataDlg
ControlCount=1
Control1=IDC_BTN_WRITE,button,1342242816

