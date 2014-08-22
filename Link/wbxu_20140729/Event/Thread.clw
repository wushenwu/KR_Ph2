; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CThreadDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "Thread.h"

ClassCount=4
Class1=CThreadApp
Class2=CThreadDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_THREAD_DIALOG

[CLS:CThreadApp]
Type=0
HeaderFile=Thread.h
ImplementationFile=Thread.cpp
Filter=N

[CLS:CThreadDlg]
Type=0
HeaderFile=ThreadDlg.h
ImplementationFile=ThreadDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=ThreadDlg.h
ImplementationFile=ThreadDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_THREAD_DIALOG]
Type=1
Class=CThreadDlg
ControlCount=6
Control1=IDC_EDIT_NUMBER1,edit,1350631552
Control2=IDC_EDIT_NUMBER2,edit,1350631552
Control3=IDC_BTN_CREATE_THREAD,button,1342242816
Control4=IDC_BTN_EXIT_THREAD,button,1342242816
Control5=IDC_BTN_PAUSE_THREAD,button,1342242816
Control6=IDC_BTN_RESUME_THREAD2,button,1342242816

