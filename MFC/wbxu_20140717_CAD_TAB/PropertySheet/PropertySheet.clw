; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CPage3
LastTemplate=CPropertyPage
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "PropertySheet.h"

ClassCount=7
Class1=CPropertySheetApp
Class2=CPropertySheetDlg
Class3=CAboutDlg

ResourceCount=6
Resource1=IDD_DIALOG1
Resource2=IDR_MAINFRAME
Resource3=IDD_ABOUTBOX
Resource4=IDD_PROPERTYSHEET_DIALOG
Class5=CPage1
Class6=CPage2
Resource5=IDD_DIALOG2
Class7=CPage3
Resource6=IDD_DIALOG3

[CLS:CPropertySheetApp]
Type=0
HeaderFile=PropertySheet.h
ImplementationFile=PropertySheet.cpp
Filter=N

[CLS:CPropertySheetDlg]
Type=0
HeaderFile=PropertySheetDlg.h
ImplementationFile=PropertySheetDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=PropertySheetDlg.h
ImplementationFile=PropertySheetDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_PROPERTYSHEET_DIALOG]
Type=1
Class=CPropertySheetDlg
ControlCount=2
Control1=IDC_BUTTON1,button,1342242816
Control2=IDC_BUTTON2,button,1342242816

[DLG:IDD_DIALOG1]
Type=1
Class=CPage1
ControlCount=1
Control1=IDC_BUTTON1,button,1342242816

[DLG:IDD_DIALOG2]
Type=1
Class=CPage2
ControlCount=1
Control1=IDC_BUTTON1,button,1342242816

[CLS:CPage1]
Type=0
HeaderFile=Page1.h
ImplementationFile=Page1.cpp
BaseClass=CPropertyPage
Filter=D
VirtualFilter=idWC

[CLS:CPage2]
Type=0
HeaderFile=Page2.h
ImplementationFile=Page2.cpp
BaseClass=CPropertyPage
Filter=D
VirtualFilter=idWC

[DLG:IDD_DIALOG3]
Type=1
Class=CPage3
ControlCount=2
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816

[CLS:CPage3]
Type=0
HeaderFile=Page3.h
ImplementationFile=Page3.cpp
BaseClass=CPropertyPage
Filter=D
VirtualFilter=idWC

