; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CFocusEnterDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "FocusEnter.h"

ClassCount=4
Class1=CFocusEnterApp
Class2=CFocusEnterDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_FOCUSENTER_DIALOG

[CLS:CFocusEnterApp]
Type=0
HeaderFile=FocusEnter.h
ImplementationFile=FocusEnter.cpp
Filter=N

[CLS:CFocusEnterDlg]
Type=0
HeaderFile=FocusEnterDlg.h
ImplementationFile=FocusEnterDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=FocusEnterDlg.h
ImplementationFile=FocusEnterDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_FOCUSENTER_DIALOG]
Type=1
Class=CFocusEnterDlg
ControlCount=8
Control1=IDOK,button,1342242816
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC_NAME,static,1342308352
Control4=IDC_STATIC_NO,static,1342308352
Control5=IDC_STATIC_AGE,static,1342308352
Control6=IDC_EDIT_NAME,edit,1350631552
Control7=IDC_EDIT_NO,edit,1350631552
Control8=IDC_EDIT_AGE,edit,1350631552

