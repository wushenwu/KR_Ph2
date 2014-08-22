; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CFileCopyDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "FileCopy.h"

ClassCount=3
Class1=CFileCopyApp
Class2=CFileCopyDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_FILECOPY_DIALOG

[CLS:CFileCopyApp]
Type=0
HeaderFile=FileCopy.h
ImplementationFile=FileCopy.cpp
Filter=N

[CLS:CFileCopyDlg]
Type=0
HeaderFile=FileCopyDlg.h
ImplementationFile=FileCopyDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=CFileCopyDlg

[CLS:CAboutDlg]
Type=0
HeaderFile=FileCopyDlg.h
ImplementationFile=FileCopyDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_FILECOPY_DIALOG]
Type=1
Class=CFileCopyDlg
ControlCount=7
Control1=IDC_EDIT_SRC,edit,1353781444
Control2=IDC_SELSRC,button,1342242816
Control3=IDC_EDIT_DST,edit,1353781444
Control4=IDC_SELDST,button,1342242816
Control5=IDC_COPY,button,1342242816
Control6=IDC_PAUSE_CONTINUE,button,1342242816
Control7=IDC_PROGRESS_FILE,msctls_progress32,1350565888

