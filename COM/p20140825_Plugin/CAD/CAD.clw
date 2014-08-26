; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CMyEditView
LastTemplate=CEditView
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "CAD.h"
LastPage=0

ClassCount=8
Class1=CCADApp
Class2=CCADDoc
Class3=CCADView
Class4=CMainFrame

ResourceCount=8
Resource1=IDR_MAINFRAME
Resource2=IDR_MENU1
Resource3=IDR_DLGBAR
Resource4=IDR_SHAPEBAR
Resource5=IDR_CONTROLBAR
Resource6=IDD_SET
Resource7=IDD_ABOUTBOX
Class5=CAboutDlg
Class6=CShapeTreeView
Class7=CShapesTreeView
Class8=CMyEditView
Resource8=IDD_DIALOGBAR

[CLS:CCADApp]
Type=0
HeaderFile=CAD.h
ImplementationFile=CAD.cpp
Filter=N

[CLS:CCADDoc]
Type=0
HeaderFile=CADDoc.h
ImplementationFile=CADDoc.cpp
Filter=N

[CLS:CCADView]
Type=0
HeaderFile=CADView.h
ImplementationFile=CADView.cpp
Filter=C
BaseClass=CView
VirtualFilter=VWC


[CLS:CMainFrame]
Type=0
HeaderFile=MainFrm.h
ImplementationFile=MainFrm.cpp
Filter=T
BaseClass=CFrameWnd
VirtualFilter=fWC




[CLS:CAboutDlg]
Type=0
HeaderFile=CAD.cpp
ImplementationFile=CAD.cpp
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
Command14=ID_EDIT_UNDO
Command15=ID_EDIT_REDO
Command16=ID_VIEW_TOOLBAR
Command17=ID_VIEW_STATUS_BAR
Command18=IDM_LINE
Command19=IDM_RECT
Command20=IDM_ELLIPSE
Command21=IDM_SET
Command22=IDM_SELECT
Command23=IDM_DELETE
Command24=IDM_MODIFY
Command25=IDM_MOVE
Command26=IDM_ROTATE
Command27=IDM_CAPTURE
Command28=ID_APP_ABOUT
CommandCount=28

[ACL:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_EDIT_COPY
Command2=IDM_DELETE
Command3=IDM_SELECT
Command4=IDM_MODIFY
Command5=ID_FILE_NEW
Command6=ID_FILE_OPEN
Command7=ID_FILE_PRINT
Command8=ID_FILE_SAVE
Command9=ID_EDIT_PASTE
Command10=ID_EDIT_UNDO
Command11=ID_EDIT_CUT
Command12=ID_NEXT_PANE
Command13=ID_PREV_PANE
Command14=ID_EDIT_COPY
Command15=ID_EDIT_PASTE
Command16=ID_EDIT_CUT
Command17=ID_EDIT_REDO
Command18=ID_EDIT_UNDO
CommandCount=18

[TB:IDR_SHAPEBAR]
Type=1
Class=?
Command1=IDM_LINE
Command2=IDM_RECT
Command3=IDM_ELLIPSE
Command4=IDM_SELECT
Command5=IDM_MOVE
Command6=IDM_ROTATE
Command7=ID_EDIT_UNDO
Command8=ID_EDIT_REDO
CommandCount=8

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

[TB:IDR_CONTROLBAR]
Type=1
Class=?
Command1=ID_CONTROL
Command2=ID_CTR1
Command3=ID_CTR3
Command4=ID_CTR3
Command5=ID_CTR4
CommandCount=5

[TB:IDR_DLGBAR]
Type=1
Class=?
Command1=ID_DLGBAR
CommandCount=1

[MNU:IDR_MENU1]
Type=1
Class=?
Command1=IDM_DELETE
Command2=IDM_MOVE
Command3=IDM_MODIFY
Command4=IDM_ROTATE
Command5=IDM_CANCEL
CommandCount=5

[DLG:IDD_SET]
Type=1
Class=?
ControlCount=18
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC_PEN,button,1342177287
Control4=IDC_STATIC_BRUSH,button,1342177287
Control5=IDC_BUTTON1_PENCOLOR,button,1342242827
Control6=IDC_BUTTON2_BRUSHCOLOR,button,1342242827
Control7=IDC_STATIC_PENSTYLE,static,1342308352
Control8=IDC_STATIC_PENWIDTH,static,1342308352
Control9=IDC_EDIT1_PENWIDTH,edit,1350639744
Control10=IDC_SPIN1_PENWIDTH,msctls_updown32,1342177314
Control11=IDC_STATIC_BRUSHSTYLE,static,1342308352
Control12=IDC_RADIO1_PENSTYLE_SOLID,button,1342308361
Control13=IDC_RADIO2_DASH,button,1342177289
Control14=IDC_RADIO3_DOT,button,1342177289
Control15=IDC_RADIO4_DASHDOT,button,1342177289
Control16=IDC_RADIO5_DASHDOTDOT,button,1342177289
Control17=IDC_RADIO6_BRUSHSTYLE_NULL,button,1342308361
Control18=IDC_RADIO7_BRUSHSOLID,button,1342177289

[DLG:IDD_DIALOGBAR]
Type=1
Class=?
ControlCount=2
Control1=IDC_EDIT1,edit,1350631552
Control2=IDC_COMBO1,combobox,1344340226

[CLS:CShapeTreeView]
Type=0
HeaderFile=..\..\..\p20140714\wbxu_20140714\cad\shapetreeview.h
ImplementationFile=..\..\..\p20140714\wbxu_20140714\cad\shapetreeview.cpp
BaseClass=CTreeView
Filter=C

[CLS:CShapesTreeView]
Type=0
HeaderFile=shapestreeview.h
ImplementationFile=shapestreeview.cpp
BaseClass=CTreeView
Filter=C
VirtualFilter=VWC

[CLS:CMyEditView]
Type=0
HeaderFile=myeditview.h
ImplementationFile=MyEditView.cpp
BaseClass=CEditView
Filter=C
VirtualFilter=VWC
LastObject=CMyEditView

