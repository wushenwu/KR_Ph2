; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CInjectDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "ToolKit.h"

ClassCount=15
Class1=CToolKitApp
Class2=CToolKitDlg
Class3=CAboutDlg

ResourceCount=11
Resource1=IDD_DLG_PROCESS
Resource2=IDR_MAINFRAME
Resource3=IDD_ABOUTBOX
Class4=CProcessDlg
Resource4=IDD_DLG_PROCESS_THREAD
Resource5=IDD_DLG_PROCESS_MEMORY
Class5=CProcessModuleDlg
Resource6=IDD_DIALOG1
Class6=CMyListCtrl
Class7=CProcessList
Class8=CProcessModuleList
Resource7=IDD_DLG_PROCESS_WINDOW
Class9=CProcessThreadDlg
Class10=CProcessThreadList
Resource8=IDD_DLG_PROCESS_MODULE
Class11=CProcessWindowDlg
Class12=CProcessWindowList
Class13=CProcessMemoryList
Resource9=IDD_TOOLKIT_DIALOG
Class14=CProcessMemoryDlg
Resource10=IDD_DLG_INJECT
Class15=CInjectDlg
Resource11=IDR_MENU_PROCESS

[CLS:CToolKitApp]
Type=0
HeaderFile=ToolKit.h
ImplementationFile=ToolKit.cpp
Filter=N

[CLS:CToolKitDlg]
Type=0
HeaderFile=ToolKitDlg.h
ImplementationFile=ToolKitDlg.cpp
Filter=D
LastObject=IDC_TAB1
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=ToolKitDlg.h
ImplementationFile=ToolKitDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_TOOLKIT_DIALOG]
Type=1
Class=CToolKitDlg
ControlCount=2
Control1=IDC_STATIC,static,1342308352
Control2=IDC_TAB1,SysTabControl32,1350635520

[CLS:CProcessDlg]
Type=0
HeaderFile=ProcessDlg.h
ImplementationFile=ProcessDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=CProcessDlg
VirtualFilter=dWC

[MNU:IDR_MENU_PROCESS]
Type=1
Class=?
Command1=IDM_PROCESS_REFRESH
Command2=IDM_PROCESS_MODULE
Command3=IDM_PROCESS_THREAD
Command4=IDM_PROCESS_HANDLE
Command5=IDM_PROCESS_WINDOW
Command6=IDM_RROCESS_MEM
Command7=IDM_INJECT
Command8=IDM_PROCESS_TERMINATE
CommandCount=8

[DLG:IDD_DLG_PROCESS]
Type=1
Class=?
ControlCount=0

[DLG:IDD_DLG_PROCESS_MODULE]
Type=1
Class=CProcessModuleDlg
ControlCount=0

[CLS:CProcessModuleDlg]
Type=0
HeaderFile=ProcessModuleDlg.h
ImplementationFile=ProcessModuleDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[DLG:IDD_DIALOG1]
Type=1
Class=?
ControlCount=2
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816

[CLS:CMyListCtrl]
Type=0
HeaderFile=mylistctrl.h
ImplementationFile=mylistctrl.cpp
BaseClass=CListCtrl
Filter=W
VirtualFilter=FWC

[CLS:CProcessList]
Type=0
HeaderFile=ProcessList.h
ImplementationFile=ProcessList.cpp
BaseClass=CListCtrl
Filter=W
VirtualFilter=FWC

[CLS:CProcessModuleList]
Type=0
HeaderFile=ProcessModuleList.h
ImplementationFile=ProcessModuleList.cpp
BaseClass=CListCtrl
Filter=W
VirtualFilter=FWC

[DLG:IDD_DLG_PROCESS_THREAD]
Type=1
Class=CProcessThreadDlg
ControlCount=0

[CLS:CProcessThreadDlg]
Type=0
HeaderFile=ProcessThreadDlg.h
ImplementationFile=ProcessThreadDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[CLS:CProcessThreadList]
Type=0
HeaderFile=ProcessThreadList.h
ImplementationFile=ProcessThreadList.cpp
BaseClass=CListCtrl
Filter=W
VirtualFilter=FWC

[DLG:IDD_DLG_PROCESS_WINDOW]
Type=1
Class=CProcessWindowDlg
ControlCount=0

[CLS:CProcessWindowDlg]
Type=0
HeaderFile=ProcessWindowDlg.h
ImplementationFile=ProcessWindowDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[CLS:CProcessWindowList]
Type=0
HeaderFile=ProcessWindowList.h
ImplementationFile=ProcessWindowList.cpp
BaseClass=CListCtrl
Filter=W
VirtualFilter=FWC

[CLS:CProcessMemoryList]
Type=0
HeaderFile=ProcessMemoryList.h
ImplementationFile=ProcessMemoryList.cpp
BaseClass=CListCtrl
Filter=W
VirtualFilter=FWC

[DLG:IDD_DLG_PROCESS_MEMORY]
Type=1
Class=CProcessMemoryDlg
ControlCount=0

[CLS:CProcessMemoryDlg]
Type=0
HeaderFile=ProcessMemoryDlg.h
ImplementationFile=ProcessMemoryDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CProcessMemoryDlg

[DLG:IDD_DLG_INJECT]
Type=1
Class=CInjectDlg
ControlCount=7
Control1=IDC_STATIC,static,1342308352
Control2=IDC_INJECT_PID,edit,1484849280
Control3=IDC_STATIC,static,1342308352
Control4=IDC_INJECT_WND,edit,1484849280
Control5=IDC_STATIC,static,1342308352
Control6=IDC_INJECT_DLL_PATH,edit,1350631552
Control7=IDC_INJECT_DLL,button,1342242816

[CLS:CInjectDlg]
Type=0
HeaderFile=InjectDlg.h
ImplementationFile=InjectDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_INJECT_DLL_PATH

