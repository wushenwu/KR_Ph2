; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CGameCheatDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "GameCheat.h"

ClassCount=3
Class1=CGameCheatApp
Class2=CGameCheatDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_GAMECHEAT_DIALOG

[CLS:CGameCheatApp]
Type=0
HeaderFile=GameCheat.h
ImplementationFile=GameCheat.cpp
Filter=N

[CLS:CGameCheatDlg]
Type=0
HeaderFile=GameCheatDlg.h
ImplementationFile=GameCheatDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=CGameCheatDlg

[CLS:CAboutDlg]
Type=0
HeaderFile=GameCheatDlg.h
ImplementationFile=GameCheatDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_GAMECHEAT_DIALOG]
Type=1
Class=CGameCheatDlg
ControlCount=11
Control1=IDC_BTN_GAMESTART,button,1342242816
Control2=IDC_CHECK_NODIE,button,1342242819
Control3=IDC_STATIC,static,1342308352
Control4=IDC_BULLETS_INIT,edit,1350631552
Control5=IDC_STATIC,static,1342308352
Control6=IDC_BULLETS_TOTAL,edit,1350631552
Control7=IDC_STATIC_SPEED,static,1342308352
Control8=IDC_CHECK_AUTO,button,1342242819
Control9=IDC_BULLETS_SPEED,edit,1350631552
Control10=IDC_BTN_GAMECHEAT,button,1342242816
Control11=IDC_BTN_CHEATEND,button,1342242816

