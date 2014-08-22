; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CWorkSpace
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "VC.h"
LastPage=0

ClassCount=14
Class1=CVCApp
Class2=CVCDoc
Class3=CVCView
Class4=CMainFrame

ResourceCount=10
Resource1=IDR_VCTYPE
Resource2=IDD_CLASSVIEW
Class5=CChildFrame
Class6=CAboutDlg
Class7=CMyCompileDLG
Resource3=IDD_WORKSPACE
Class8=CBrowseView
Class9=CWorkSpace
Resource4=IDD_OUTPUT
Resource5=IDD_ABOUTBOX
Resource6=IDD_FILEVIEW
Class10=CClassView
Class11=CResView
Class12=CFileView
Resource7=IDD_RESVIEW
Resource8=IDR_MAINFRAME
Resource9=IDD_BUILD
Class13=CBuildView
Class14=CDebugView
Resource10=IDD_DEBUG

[CLS:CVCApp]
Type=0
HeaderFile=VC.h
ImplementationFile=VC.cpp
Filter=N

[CLS:CVCDoc]
Type=0
HeaderFile=VCDoc.h
ImplementationFile=VCDoc.cpp
Filter=N

[CLS:CVCView]
Type=0
HeaderFile=VCView.h
ImplementationFile=VCView.cpp
Filter=C


[CLS:CMainFrame]
Type=0
HeaderFile=MainFrm.h
ImplementationFile=MainFrm.cpp
Filter=C
BaseClass=CMDIFrameWnd
VirtualFilter=fWC
LastObject=CMainFrame


[CLS:CChildFrame]
Type=0
HeaderFile=ChildFrm.h
ImplementationFile=ChildFrm.cpp
Filter=M
BaseClass=CMDIChildWnd
VirtualFilter=mfWC


[CLS:CAboutDlg]
Type=0
HeaderFile=VC.cpp
ImplementationFile=VC.cpp
Filter=D
LastObject=CAboutDlg

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[MNU:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_PRINT_SETUP
Command4=ID_FILE_MRU_FILE1
Command5=ID_APP_EXIT
Command6=ID_VIEW_TOOLBAR
Command7=ID_VIEW_STATUS_BAR
Command8=ID_APP_ABOUT
CommandCount=8

[TB:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_EDIT_CUT
Command5=ID_EDIT_COPY
Command6=ID_EDIT_PASTE
Command7=ID_FILE_PRINT
Command8=ID_APP_ABOUT
CommandCount=8

[MNU:IDR_VCTYPE]
Type=1
Class=CVCView
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_CLOSE
Command4=ID_FILE_SAVE
Command5=ID_FILE_SAVE_AS
Command6=ID_FILE_PRINT
Command7=ID_FILE_PRINT_PREVIEW
Command8=ID_FILE_PRINT_SETUP
Command9=ID_FILE_MRU_FILE1
Command10=ID_APP_EXIT
Command11=ID_EDIT_UNDO
Command12=ID_EDIT_CUT
Command13=ID_EDIT_COPY
Command14=ID_EDIT_PASTE
Command15=ID_VIEW_TOOLBAR
Command16=ID_VIEW_STATUS_BAR
Command17=ID_WINDOW_NEW
Command18=ID_WINDOW_CASCADE
Command19=ID_WINDOW_TILE_HORZ
Command20=ID_WINDOW_ARRANGE
Command21=ID_APP_ABOUT
CommandCount=21

[ACL:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_FILE_PRINT
Command5=ID_EDIT_UNDO
Command6=ID_EDIT_CUT
Command7=ID_EDIT_COPY
Command8=ID_EDIT_PASTE
Command9=ID_EDIT_UNDO
Command10=ID_EDIT_CUT
Command11=ID_EDIT_COPY
Command12=ID_EDIT_PASTE
Command13=ID_NEXT_PANE
Command14=ID_PREV_PANE
CommandCount=14

[CLS:CMyCompileDLG]
Type=0
HeaderFile=mycompiledlg.h
ImplementationFile=mycompiledlg.cpp
BaseClass=CDialog
Filter=D
LastObject=CMyCompileDLG
VirtualFilter=dWC

[CLS:CBrowseView]
Type=0
HeaderFile=BrowseView.h
ImplementationFile=BrowseView.cpp
BaseClass=CView
Filter=C
LastObject=CBrowseView

[DLG:IDD_WORKSPACE]
Type=1
Class=CWorkSpace
ControlCount=1
Control1=IDC_TAB1,SysTabControl32,1342177282

[CLS:CWorkSpace]
Type=0
HeaderFile=WorkSpace.h
ImplementationFile=WorkSpace.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CWorkSpace

[DLG:IDD_CLASSVIEW]
Type=1
Class=CClassView
ControlCount=1
Control1=IDC_CLASSTREE,SysTreeView32,1350631424

[DLG:IDD_RESVIEW]
Type=1
Class=CResView
ControlCount=1
Control1=IDC_RESTREE,SysTreeView32,1350631424

[DLG:IDD_FILEVIEW]
Type=1
Class=CFileView
ControlCount=1
Control1=IDC_FILETREE,SysTreeView32,1350631424

[CLS:CClassView]
Type=0
HeaderFile=ClassView.h
ImplementationFile=ClassView.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[CLS:CResView]
Type=0
HeaderFile=ResView.h
ImplementationFile=ResView.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=ID_EDIT_COPY

[CLS:CFileView]
Type=0
HeaderFile=FileView.h
ImplementationFile=FileView.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[DLG:IDD_OUTPUT]
Type=1
Class=?
ControlCount=1
Control1=IDC_OUTPUT,SysTabControl32,1342177282

[DLG:IDD_BUILD]
Type=1
Class=CBuildView
ControlCount=1
Control1=IDC_BUILD,edit,1350631552

[DLG:IDD_DEBUG]
Type=1
Class=CDebugView
ControlCount=1
Control1=IDC_DEBUG,edit,1350631552

[CLS:CBuildView]
Type=0
HeaderFile=buildview.h
ImplementationFile=BuildView.cpp
BaseClass=CDialog
Filter=D
LastObject=CBuildView
VirtualFilter=dWC

[CLS:CDebugView]
Type=0
HeaderFile=DebugView.h
ImplementationFile=DebugView.cpp
BaseClass=CDialog
Filter=D
LastObject=CDebugView
VirtualFilter=dWC

