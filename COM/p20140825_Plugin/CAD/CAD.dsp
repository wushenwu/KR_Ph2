# Microsoft Developer Studio Project File - Name="CAD" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=CAD - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "CAD.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CAD.mak" CFG="CAD - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CAD - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "CAD - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "CAD - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x804 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "CAD - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x804 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "CAD - Win32 Release"
# Name "CAD - Win32 Debug"
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\ARW02DN.ICO
# End Source File
# Begin Source File

SOURCE=.\res\ARW02LT.ICO
# End Source File
# Begin Source File

SOURCE=.\res\ARW02RT.ICO
# End Source File
# Begin Source File

SOURCE=.\res\ARW02UP.ICO
# End Source File
# Begin Source File

SOURCE=.\res\ARW03DN.ICO
# End Source File
# Begin Source File

SOURCE=.\res\ARW03LT.ICO
# End Source File
# Begin Source File

SOURCE=.\res\ARW03RT.ICO
# End Source File
# Begin Source File

SOURCE=.\res\ARW03UP.ICO
# End Source File
# Begin Source File

SOURCE=.\res\bmp00001.bmp
# End Source File
# Begin Source File

SOURCE=.\res\bmp00002.bmp
# End Source File
# Begin Source File

SOURCE=.\res\CAD.ico
# End Source File
# Begin Source File

SOURCE=.\res\CAD.rc2
# End Source File
# Begin Source File

SOURCE=.\res\CADDoc.ico
# End Source File
# Begin Source File

SOURCE=.\res\ico00001.ico
# End Source File
# Begin Source File

SOURCE=.\res\ico00002.ico
# End Source File
# Begin Source File

SOURCE=.\res\ico00003.ico
# End Source File
# Begin Source File

SOURCE=.\res\icon9.ico
# End Source File
# Begin Source File

SOURCE=.\res\Toolbar.bmp
# End Source File
# Begin Source File

SOURCE=.\res\toolbar1.bmp
# End Source File
# End Group
# Begin Group "Shape"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Shape\MyEllipse.cpp
# End Source File
# Begin Source File

SOURCE=.\Shape\MyEllipse.h
# End Source File
# Begin Source File

SOURCE=.\Shape\MyEllipseFactory.cpp
# End Source File
# Begin Source File

SOURCE=.\Shape\MyEllipseFactory.h
# End Source File
# Begin Source File

SOURCE=.\Shape\MyLine.cpp
# End Source File
# Begin Source File

SOURCE=.\Shape\MyLine.h
# End Source File
# Begin Source File

SOURCE=.\Shape\MyLineFactory.cpp
# End Source File
# Begin Source File

SOURCE=.\Shape\MyLineFactory.h
# End Source File
# Begin Source File

SOURCE=.\Shape\MyRect.cpp
# End Source File
# Begin Source File

SOURCE=.\Shape\MyRect.h
# End Source File
# Begin Source File

SOURCE=.\Shape\MyRectFactory.cpp
# End Source File
# Begin Source File

SOURCE=.\Shape\MyRectFactory.h
# End Source File
# Begin Source File

SOURCE=.\Shape\MyShape.cpp
# End Source File
# Begin Source File

SOURCE=.\Shape\MyShape.h
# End Source File
# Begin Source File

SOURCE=.\Shape\MyShapeFactory.cpp
# End Source File
# Begin Source File

SOURCE=.\Shape\MyShapeFactory.h
# End Source File
# End Group
# Begin Group "MainFrame"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\CAD.cpp
# End Source File
# Begin Source File

SOURCE=.\CAD.h
# End Source File
# Begin Source File

SOURCE=.\CAD.rc
# End Source File
# Begin Source File

SOURCE=.\CADDoc.cpp
# End Source File
# Begin Source File

SOURCE=.\CADDoc.h
# End Source File
# Begin Source File

SOURCE=.\CADView.cpp
# End Source File
# Begin Source File

SOURCE=.\CADView.h
# End Source File
# Begin Source File

SOURCE=.\MainFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\MainFrm.h
# End Source File
# Begin Source File

SOURCE=.\MyList.cpp
# End Source File
# Begin Source File

SOURCE=.\MyList.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# End Group
# Begin Group "Command"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Command\MyCmdMgr.cpp
# End Source File
# Begin Source File

SOURCE=.\Command\MyCmdMgr.h
# End Source File
# Begin Source File

SOURCE=.\Command\MyCommand.cpp
# End Source File
# Begin Source File

SOURCE=.\Command\MyCommand.h
# End Source File
# Begin Source File

SOURCE=.\Command\MyDeleteCommand.cpp
# End Source File
# Begin Source File

SOURCE=.\Command\MyDeleteCommand.h
# End Source File
# Begin Source File

SOURCE=.\Command\MyDrawCommand.cpp
# End Source File
# Begin Source File

SOURCE=.\Command\MyDrawCommand.h
# End Source File
# Begin Source File

SOURCE=.\Command\MyModifyCommand.cpp
# End Source File
# Begin Source File

SOURCE=.\Command\MyModifyCommand.h
# End Source File
# End Group
# Begin Group "Set"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Set\MyColorBtn.cpp
# End Source File
# Begin Source File

SOURCE=.\Set\MyColorBtn.h
# End Source File
# Begin Source File

SOURCE=.\Set\setdlg.cpp
# End Source File
# Begin Source File

SOURCE=.\Set\setdlg.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\IShape.h
# End Source File
# Begin Source File

SOURCE=.\MyEditView.cpp
# End Source File
# Begin Source File

SOURCE=.\myeditview.h
# End Source File
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# Begin Source File

SOURCE=.\shapestreeview.cpp
# End Source File
# Begin Source File

SOURCE=.\shapestreeview.h
# End Source File
# Begin Source File

SOURCE=.\struct.h
# End Source File
# End Target
# End Project
