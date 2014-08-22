; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CUpload_ServerDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "Upload_Server.h"

ClassCount=3
Class1=CUpload_ServerApp
Class2=CUpload_ServerDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_UPLOAD_SERVER_DIALOG

[CLS:CUpload_ServerApp]
Type=0
HeaderFile=Upload_Server.h
ImplementationFile=Upload_Server.cpp
Filter=N

[CLS:CUpload_ServerDlg]
Type=0
HeaderFile=Upload_ServerDlg.h
ImplementationFile=Upload_ServerDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=IDC_UPLOADINFO

[CLS:CAboutDlg]
Type=0
HeaderFile=Upload_ServerDlg.h
ImplementationFile=Upload_ServerDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_UPLOAD_SERVER_DIALOG]
Type=1
Class=CUpload_ServerDlg
ControlCount=3
Control1=ID_START,button,1342242817
Control2=ID_STOP,button,1342242816
Control3=IDC_UPLOADINFO,edit,1350631556

