; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CCallWindowDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "CallWindow.h"

ClassCount=3
Class1=CCallWindowApp
Class2=CCallWindowDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_CALLWINDOW_DIALOG

[CLS:CCallWindowApp]
Type=0
HeaderFile=CallWindow.h
ImplementationFile=CallWindow.cpp
Filter=N

[CLS:CCallWindowDlg]
Type=0
HeaderFile=CallWindowDlg.h
ImplementationFile=CallWindowDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=CallWindowDlg.h
ImplementationFile=CallWindowDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_CALLWINDOW_DIALOG]
Type=1
Class=CCallWindowDlg
ControlCount=6
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_BUTTON1,button,1342242816
Control4=IDC_BUTTON2,button,1342242816
Control5=IDC_BUTTON3,button,1342242816
Control6=IDC_BUTTON4,button,1342242816

