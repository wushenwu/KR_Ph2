; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CFileMgrDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "FileMgr.h"

ClassCount=4
Class1=CFileMgrApp
Class2=CFileMgrDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_FILEMGR_DIALOG

[CLS:CFileMgrApp]
Type=0
HeaderFile=FileMgr.h
ImplementationFile=FileMgr.cpp
Filter=N

[CLS:CFileMgrDlg]
Type=0
HeaderFile=FileMgrDlg.h
ImplementationFile=FileMgrDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=FileMgrDlg.h
ImplementationFile=FileMgrDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_FILEMGR_DIALOG]
Type=1
Class=CFileMgrDlg
ControlCount=4
Control1=IDC_BUTTON1,button,1342242816
Control2=IDC_EDIT1,edit,1350631552
Control3=IDC_EDIT2,edit,1353777348
Control4=IDC_BUTTON2,button,1342242816

