; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CModifyValueDLG
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "Reg.h"
LastPage=0

ClassCount=8
Class1=CRegApp
Class2=CRegDoc
Class3=CRegView
Class4=CMainFrame

ResourceCount=6
Resource1=IDR_KEYMENU
Resource2=IDR_MAINFRAME
Resource3=IDD_ABOUTBOX
Resource4=IDR_NONSEL
Class5=CAboutDlg
Class6=CRegTreeView
Class7=CRegListView
Class8=CModifyValueDLG
Resource5=IDR_SEL
Resource6=IDD_DLG_MODIFYVALUE

[CLS:CRegApp]
Type=0
HeaderFile=Reg.h
ImplementationFile=Reg.cpp
Filter=N

[CLS:CRegDoc]
Type=0
HeaderFile=RegDoc.h
ImplementationFile=RegDoc.cpp
Filter=N

[CLS:CRegView]
Type=0
HeaderFile=RegView.h
ImplementationFile=RegView.cpp
Filter=C


[CLS:CMainFrame]
Type=0
HeaderFile=MainFrm.h
ImplementationFile=MainFrm.cpp
Filter=T
BaseClass=CFrameWnd
VirtualFilter=fWC




[CLS:CAboutDlg]
Type=0
HeaderFile=Reg.cpp
ImplementationFile=Reg.cpp
Filter=D

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
Command3=ID_FILE_SAVE
Command4=ID_FILE_SAVE_AS
Command5=ID_FILE_PRINT
Command6=ID_FILE_PRINT_PREVIEW
Command7=ID_FILE_PRINT_SETUP
Command8=ID_FILE_MRU_FILE1
Command9=ID_APP_EXIT
Command10=ID_EDIT_UNDO
Command11=ID_EDIT_CUT
Command12=ID_EDIT_COPY
Command13=ID_EDIT_PASTE
Command14=ID_VIEW_TOOLBAR
Command15=ID_VIEW_STATUS_BAR
Command16=ID_APP_ABOUT
CommandCount=16

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

[TB:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_EDIT_CUT
Command5=ID_EDIT_COPY
Command6=ID_EDIT_PASTE
Command7=ID_FILE_PRINT
Command8=ID_APP_ABOUT
CommandCount=8

[CLS:CRegTreeView]
Type=0
HeaderFile=regtreeview.h
ImplementationFile=regtreeview.cpp
BaseClass=CTreeView
Filter=C
VirtualFilter=VWC

[CLS:CRegListView]
Type=0
HeaderFile=reglistview.h
ImplementationFile=reglistview.cpp
BaseClass=CListView
Filter=C
VirtualFilter=VWC
LastObject=CRegListView

[MNU:IDR_NONSEL]
Type=1
Class=?
Command1=IDM_NEWKEY
Command2=IDM_NEWSZ
Command3=IDM_NEWBI
Command4=IDM_NEWDWORD
CommandCount=4

[MNU:IDR_SEL]
Type=1
Class=?
Command1=IDM_MODIFYVALUE
Command2=IDM_MODIFYVALUEBI
Command3=IDM_DELVALUE
Command4=IDM_RENAMEVALUE
CommandCount=4

[DLG:IDD_DLG_MODIFYVALUE]
Type=1
Class=CModifyValueDLG
ControlCount=6
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Control4=IDC_EDIT1,edit,1484849280
Control5=IDC_STATIC,static,1342308352
Control6=IDC_EDIT2,edit,1350631552

[CLS:CModifyValueDLG]
Type=0
HeaderFile=ModifyValueDLG.h
ImplementationFile=ModifyValueDLG.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CModifyValueDLG

[MNU:IDR_KEYMENU]
Type=1
Class=?
Command1=IDM_EXPAND
Command2=IDM_NEWKEY
Command3=IDM_NEWSZ
Command4=IDM_NEWBI
Command5=IDM_NEWDWORD
Command6=IDM_FIND
CommandCount=6

