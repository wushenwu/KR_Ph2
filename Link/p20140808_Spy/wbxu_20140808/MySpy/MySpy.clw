; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CWindowView
LastTemplate=CTreeView
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "MySpy.h"
LastPage=0

ClassCount=19
Class1=CMySpyApp
Class2=CMySpyDoc
Class3=CMySpyView
Class4=CMainFrame

ResourceCount=14
Resource1=IDD_WNDPROPERTY_WND
Resource2=IDD_DLG_WNDPROPERITY
Class5=CChildFrame
Class6=CAboutDlg
Resource3=IDR_MAINFRAME
Class7=CFindWndDlg
Class8=CMyStatic
Resource4=IDR_MYSPYTYPE
Class9=CWindowPropertyDlg
Resource5=IDR_WND
Class10=CWndProperty_Class
Resource6=IDD_DLG_FINDWND
Class11=CWndProperty_General
Resource7=IDD_WNDPROPERTY_STYLE
Class12=CWndProperty_Style
Resource8=IDD_MSG_OPTIONS
Class13=CWndProperty_Wnd
Resource9=IDD_ABOUTBOX
Class14=CWndProperty_Process
Resource10=IDD_WNDPROPER_GENERAL
Resource11=IDR_WINDOW
Class15=CMsgOptionDlg
Class16=CMsgOpt_Wnd
Class17=CWindowDoc
Class18=CWindowFrame
Class19=CWindowView
Resource12=IDD_WNDPROPERTY_PROCESS
Resource13=IDD_WNDPROPERTY_CLASS
Resource14=IDD_MSG_WND

[CLS:CMySpyApp]
Type=0
HeaderFile=MySpy.h
ImplementationFile=MySpy.cpp
Filter=N
BaseClass=CWinApp
VirtualFilter=AC

[CLS:CMySpyDoc]
Type=0
HeaderFile=MySpyDoc.h
ImplementationFile=MySpyDoc.cpp
Filter=N

[CLS:CMySpyView]
Type=0
HeaderFile=MySpyView.h
ImplementationFile=MySpyView.cpp
Filter=C


[CLS:CMainFrame]
Type=0
HeaderFile=MainFrm.h
ImplementationFile=MainFrm.cpp
Filter=T
BaseClass=CMDIFrameWnd
VirtualFilter=fWC


[CLS:CChildFrame]
Type=0
HeaderFile=ChildFrm.h
ImplementationFile=ChildFrm.cpp
Filter=M


[CLS:CAboutDlg]
Type=0
HeaderFile=MySpy.cpp
ImplementationFile=MySpy.cpp
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
Command1=IDM_Msg
Command2=IDM_FINDWND
Command3=ID_APP_EXIT
Command4=ID_VIEW_TOOLBAR
Command5=ID_VIEW_STATUS_BAR
Command6=IDM_MSG_START_STOP
Command7=ID_APP_ABOUT
CommandCount=7

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

[MNU:IDR_MYSPYTYPE]
Type=1
Class=CMySpyView
Command1=IDM_Msg
Command2=IDM_FINDWND
Command3=ID_APP_EXIT
Command4=ID_VIEW_TOOLBAR
Command5=ID_VIEW_STATUS_BAR
Command6=IDM_MSG_START_STOP
Command7=ID_APP_ABOUT
CommandCount=7

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

[CLS:CFindWndDlg]
Type=0
HeaderFile=FindWndDlg.h
ImplementationFile=FindWndDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=1622
VirtualFilter=dWC

[DLG:IDD_DLG_FINDWND]
Type=1
Class=CFindWndDlg
ControlCount=22
Control1=IDC_STATIC,button,1342177287
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=ID_FIND_TOOL,static,1342177539
Control5=ID_FIND_HIDE,button,1342373891
Control6=IDC_STATIC,static,1342308352
Control7=IDC_FIND_HANDLE,edit,1350631552
Control8=IDC_STATIC,static,1342308352
Control9=IDC_STATIC,static,1342308352
Control10=IDC_STATIC,static,1342308352
Control11=IDC_STATIC,static,1342308352
Control12=IDC_FIND_CAPTION,static,1342312448
Control13=IDC_FIND_CLASS,static,1342312448
Control14=1622,static,1342308352
Control15=IDC_FIND_RECT,static,1342312448
Control16=IDC_STATIC,button,1342177287
Control17=IDC_FIND_PROPER,button,1342308361
Control18=IDC_FIND_MSG,button,1342177289
Control19=IDC_FIND_OK,button,1342242816
Control20=IDC_FIND_CANCEL,button,1342242816
Control21=IDC_BUTTON3,button,1342242816
Control22=IDC_FIND_STYLE,static,1342312448

[CLS:CMyStatic]
Type=0
HeaderFile=MyStatic.h
ImplementationFile=MyStatic.cpp
BaseClass=CStatic
Filter=W
LastObject=CMyStatic
VirtualFilter=WC

[CLS:CWindowPropertyDlg]
Type=0
HeaderFile=WindowPropertyDlg.h
ImplementationFile=WindowPropertyDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=CWindowPropertyDlg
VirtualFilter=dWC

[DLG:IDD_DLG_WNDPROPERITY]
Type=1
Class=CWindowPropertyDlg
ControlCount=1
Control1=IDC_TAB_WNDPROPERTY,SysTabControl32,1342177280

[DLG:IDD_WNDPROPERTY_CLASS]
Type=1
Class=CWndProperty_Class
ControlCount=22
Control1=IDC_STATIC,static,1342308352
Control2=IDC_WND_CLASSNAME,static,1342312448
Control3=IDC_STATIC,static,1342308352
Control4=IDC_WND_CLASSSTYLE,static,1342308352
Control5=IDC_STATIC,static,1342308352
Control6=IDC_WND_CLASSBYTES,static,1342308352
Control7=IDC_STATIC,static,1342308352
Control8=IDC_WND_CLASSATOM,static,1342308352
Control9=IDC_STATIC,static,1342308352
Control10=IDC_STATIC,static,1342308352
Control11=IDC_WND_WNDBYTES,static,1342308352
Control12=IDC_WND_MENUNAME,static,1342308352
Control13=IDC_STATIC,static,1342308352
Control14=IDC_WND_ICONHANDLE,static,1342308352
Control15=IDC_STATIC,static,1342308352
Control16=IDC_WND_CURSORHANDLE,static,1342308352
Control17=IDC_STATIC,static,1342308352
Control18=IDC_WND_BKGBRUSH,static,1342308352
Control19=IDC_STATIC,static,1342308352
Control20=IDC_WND_INSTANCEHANDLE,static,1342308352
Control21=IDC_STATIC,static,1342308352
Control22=IDC_WND_WNDPROC,static,1342308352

[CLS:CWndProperty_Class]
Type=0
HeaderFile=WndProperty_Class.h
ImplementationFile=WndProperty_Class.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[DLG:IDD_WNDPROPER_GENERAL]
Type=1
Class=CWndProperty_General
ControlCount=20
Control1=65535,static,1342308352
Control2=IDC_GEN_WNDHANDLE,static,1342308352
Control3=65535,static,1342308352
Control4=IDC_GEN_WNDCAP,edit,1350633600
Control5=65535,static,1342308352
Control6=IDC_GEN_WNDPROC,static,1342308352
Control7=65535,static,1342308352
Control8=IDC_GEN_RESTOREDRECT,static,1342308352
Control9=65535,static,1342308352
Control10=IDC_GEN_WNDRECT,static,1342308352
Control11=209,static,1342308352
Control12=IDC_GEN_HINSTANCE,static,1342308352
Control13=65535,static,1342308352
Control14=IDC_GEN_MENUHANDLE,static,1342308352
Control15=65535,static,1342308352
Control16=IDC_GEN_WNDBYTES,combobox,1344339971
Control17=65535,static,1342308352
Control18=65535,static,1342308352
Control19=IDC_GEN_USERDATA,static,1342308352
Control20=IDC_GEN_CLIENTRECT,static,1342308352

[CLS:CWndProperty_General]
Type=0
HeaderFile=WndProperty_General.h
ImplementationFile=WndProperty_General.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[DLG:IDD_WNDPROPERTY_STYLE]
Type=1
Class=CWndProperty_Style
ControlCount=6
Control1=65535,static,1342308352
Control2=IDC_STYLE_WND,static,1342308352
Control3=IDC_STYLE_WND_LB,listbox,1352728577
Control4=65535,static,1342308352
Control5=IDC_STYLE_EX,static,1342308352
Control6=IDC_STYLE_EX_LB,listbox,1352728577

[CLS:CWndProperty_Style]
Type=0
HeaderFile=WndProperty_Style.h
ImplementationFile=WndProperty_Style.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=65535

[DLG:IDD_WNDPROPERTY_WND]
Type=1
Class=CWndProperty_Wnd
ControlCount=10
Control1=65535,static,1342308352
Control2=IDC_WND_NEXT,static,1342308352
Control3=65535,static,1342308352
Control4=IDC_WND_PRE,static,1342308352
Control5=65535,static,1342308352
Control6=IDC_WND_PARENT,static,1342308352
Control7=65535,static,1342308352
Control8=IDC_WND_1stChild,static,1342308352
Control9=65535,static,1342308352
Control10=IDC_WND_OWNER,static,1342308352

[CLS:CWndProperty_Wnd]
Type=0
HeaderFile=WndProperty_Wnd.h
ImplementationFile=WndProperty_Wnd.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[DLG:IDD_WNDPROPERTY_PROCESS]
Type=1
Class=CWndProperty_Process
ControlCount=4
Control1=IDC_STATIC,static,1342308352
Control2=IDC_STATIC,static,1342308352
Control3=IDC_PROCESS_PID,edit,1350631552
Control4=IDC_PROCESS_TID,edit,1350631552

[CLS:CWndProperty_Process]
Type=0
HeaderFile=WndProperty_Process.h
ImplementationFile=WndProperty_Process.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CWndProperty_Process

[DLG:IDD_MSG_OPTIONS]
Type=1
Class=CMsgOptionDlg
ControlCount=4
Control1=IDC_MSG_OPTION_TAB,SysTabControl32,1342177280
Control2=IDC_MSG_OK,button,1342242816
Control3=IDC_MSG_CANCEL,button,1342242816
Control4=IDC_MSG_HELP,button,1342242816

[DLG:IDD_MSG_WND]
Type=1
Class=CMsgOpt_Wnd
ControlCount=27
Control1=IDC_STATIC,button,1342177287
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDC_MSG_FIND_TOOL,static,1342177539
Control5=IDC_MSG_FIND_HIDE,button,1342373891
Control6=IDC_STATIC,button,1342177287
Control7=IDC_STATIC,static,1342308352
Control8=IDC_MSG_PID,static,1342308352
Control9=IDC_STATIC,static,1342308352
Control10=IDC_MSG_WND,static,1342308352
Control11=IDC_MSG_TID,static,1342308352
Control12=1419,static,1342308352
Control13=IDC_MSG_WND_TEXT,static,1342308352
Control14=1417,static,1342308352
Control15=IDC_MSG_WNDCLASS,static,1342308352
Control16=1423,static,1342308352
Control17=1415,static,1342308352
Control18=IDC_STATIC,button,1342308359
Control19=IDC_MSG_ADD_PARENT,button,1342242819
Control20=IDC_MSG_ADD_CHILD,button,1342242819
Control21=IDC_MSG_ADD_THREAD,button,1342242819
Control22=IDC_MSG_ADD_PROCESS,button,1342242819
Control23=IDC_MSG_ADD_ALL,button,1342242819
Control24=1408,button,1342373891
Control25=IDC_STATIC,static,1342308352
Control26=IDC_MSG_RECT,static,1342308352
Control27=IDC_MSG_STYLE,static,1342308352

[CLS:CMsgOptionDlg]
Type=0
HeaderFile=MsgOptionDlg.h
ImplementationFile=MsgOptionDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CMsgOptionDlg

[CLS:CMsgOpt_Wnd]
Type=0
HeaderFile=MsgOpt_Wnd.h
ImplementationFile=MsgOpt_Wnd.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[CLS:CWindowDoc]
Type=0
HeaderFile=WindowDoc.h
ImplementationFile=WindowDoc.cpp
BaseClass=CDocument
Filter=N

[CLS:CWindowFrame]
Type=0
HeaderFile=WindowFrame.h
ImplementationFile=WindowFrame.cpp
BaseClass=CMDIChildWnd
Filter=M

[CLS:CWindowView]
Type=0
HeaderFile=WindowView.h
ImplementationFile=WindowView.cpp
BaseClass=CTreeView
Filter=C
VirtualFilter=VWC

[MNU:IDR_WND]
Type=1
Class=?
Command1=IDM_Msg
Command2=IDM_WND
Command3=IDM_FINDWND
Command4=ID_APP_EXIT
CommandCount=4

[MNU:IDR_WINDOW]
Type=1
Class=?
Command1=IDM_Msg
Command2=IDM_WND
Command3=IDM_FINDWND
Command4=ID_APP_EXIT
CommandCount=4

