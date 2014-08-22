# Microsoft Developer Studio Generated NMAKE File, Based on MySpy.dsp
!IF "$(CFG)" == ""
CFG=MySpy - Win32 Debug
!MESSAGE No configuration specified. Defaulting to MySpy - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "MySpy - Win32 Release" && "$(CFG)" != "MySpy - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "MySpy.mak" CFG="MySpy - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "MySpy - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "MySpy - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "MySpy - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\MySpy.exe"


CLEAN :
	-@erase "$(INTDIR)\FindWndDlg.obj"
	-@erase "$(INTDIR)\Info.obj"
	-@erase "$(INTDIR)\Inject.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\MessageDoc.obj"
	-@erase "$(INTDIR)\MessageFrm.obj"
	-@erase "$(INTDIR)\MessageView.obj"
	-@erase "$(INTDIR)\MSG.OBJ"
	-@erase "$(INTDIR)\MsgOpt_Wnd.obj"
	-@erase "$(INTDIR)\MsgOptionDlg.obj"
	-@erase "$(INTDIR)\MySpy.obj"
	-@erase "$(INTDIR)\MySpy.pch"
	-@erase "$(INTDIR)\MySpy.res"
	-@erase "$(INTDIR)\MyStatic.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\WindowDoc.obj"
	-@erase "$(INTDIR)\WindowFrame.obj"
	-@erase "$(INTDIR)\WindowPropertyDlg.obj"
	-@erase "$(INTDIR)\WindowView.obj"
	-@erase "$(INTDIR)\WndProperty_Class.obj"
	-@erase "$(INTDIR)\WndProperty_General.obj"
	-@erase "$(INTDIR)\WndProperty_Process.obj"
	-@erase "$(INTDIR)\WndProperty_Style.obj"
	-@erase "$(INTDIR)\WndProperty_Wnd.obj"
	-@erase "$(OUTDIR)\MySpy.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\MySpy.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\MySpy.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\MySpy.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\MySpy.pdb" /machine:I386 /out:"$(OUTDIR)\MySpy.exe" 
LINK32_OBJS= \
	"$(INTDIR)\FindWndDlg.obj" \
	"$(INTDIR)\Info.obj" \
	"$(INTDIR)\Inject.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\MessageDoc.obj" \
	"$(INTDIR)\MessageFrm.obj" \
	"$(INTDIR)\MessageView.obj" \
	"$(INTDIR)\MSG.OBJ" \
	"$(INTDIR)\MsgOpt_Wnd.obj" \
	"$(INTDIR)\MsgOptionDlg.obj" \
	"$(INTDIR)\MySpy.obj" \
	"$(INTDIR)\MyStatic.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WindowDoc.obj" \
	"$(INTDIR)\WindowFrame.obj" \
	"$(INTDIR)\WindowPropertyDlg.obj" \
	"$(INTDIR)\WindowView.obj" \
	"$(INTDIR)\WndProperty_Class.obj" \
	"$(INTDIR)\WndProperty_General.obj" \
	"$(INTDIR)\WndProperty_Process.obj" \
	"$(INTDIR)\WndProperty_Style.obj" \
	"$(INTDIR)\WndProperty_Wnd.obj" \
	"$(INTDIR)\MySpy.res"

"$(OUTDIR)\MySpy.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "MySpy - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\MySpy.exe"


CLEAN :
	-@erase "$(INTDIR)\FindWndDlg.obj"
	-@erase "$(INTDIR)\Info.obj"
	-@erase "$(INTDIR)\Inject.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\MessageDoc.obj"
	-@erase "$(INTDIR)\MessageFrm.obj"
	-@erase "$(INTDIR)\MessageView.obj"
	-@erase "$(INTDIR)\MSG.OBJ"
	-@erase "$(INTDIR)\MsgOpt_Wnd.obj"
	-@erase "$(INTDIR)\MsgOptionDlg.obj"
	-@erase "$(INTDIR)\MySpy.obj"
	-@erase "$(INTDIR)\MySpy.pch"
	-@erase "$(INTDIR)\MySpy.res"
	-@erase "$(INTDIR)\MyStatic.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\WindowDoc.obj"
	-@erase "$(INTDIR)\WindowFrame.obj"
	-@erase "$(INTDIR)\WindowPropertyDlg.obj"
	-@erase "$(INTDIR)\WindowView.obj"
	-@erase "$(INTDIR)\WndProperty_Class.obj"
	-@erase "$(INTDIR)\WndProperty_General.obj"
	-@erase "$(INTDIR)\WndProperty_Process.obj"
	-@erase "$(INTDIR)\WndProperty_Style.obj"
	-@erase "$(INTDIR)\WndProperty_Wnd.obj"
	-@erase "$(OUTDIR)\MySpy.exe"
	-@erase "$(OUTDIR)\MySpy.ilk"
	-@erase "$(OUTDIR)\MySpy.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\MySpy.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\MySpy.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\MySpy.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\MySpy.pdb" /debug /machine:I386 /out:"$(OUTDIR)\MySpy.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\FindWndDlg.obj" \
	"$(INTDIR)\Info.obj" \
	"$(INTDIR)\Inject.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\MessageDoc.obj" \
	"$(INTDIR)\MessageFrm.obj" \
	"$(INTDIR)\MessageView.obj" \
	"$(INTDIR)\MSG.OBJ" \
	"$(INTDIR)\MsgOpt_Wnd.obj" \
	"$(INTDIR)\MsgOptionDlg.obj" \
	"$(INTDIR)\MySpy.obj" \
	"$(INTDIR)\MyStatic.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WindowDoc.obj" \
	"$(INTDIR)\WindowFrame.obj" \
	"$(INTDIR)\WindowPropertyDlg.obj" \
	"$(INTDIR)\WindowView.obj" \
	"$(INTDIR)\WndProperty_Class.obj" \
	"$(INTDIR)\WndProperty_General.obj" \
	"$(INTDIR)\WndProperty_Process.obj" \
	"$(INTDIR)\WndProperty_Style.obj" \
	"$(INTDIR)\WndProperty_Wnd.obj" \
	"$(INTDIR)\MySpy.res"

"$(OUTDIR)\MySpy.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("MySpy.dep")
!INCLUDE "MySpy.dep"
!ELSE 
!MESSAGE Warning: cannot find "MySpy.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "MySpy - Win32 Release" || "$(CFG)" == "MySpy - Win32 Debug"
SOURCE=.\FindWndDlg.cpp

"$(INTDIR)\FindWndDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\Info.cpp

"$(INTDIR)\Info.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\Inject.cpp

"$(INTDIR)\Inject.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\MainFrm.cpp

"$(INTDIR)\MainFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\MessageDoc.cpp

"$(INTDIR)\MessageDoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\MessageFrm.cpp

"$(INTDIR)\MessageFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\MessageView.cpp

"$(INTDIR)\MessageView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\MSG.CPP

"$(INTDIR)\MSG.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\MsgOpt_Wnd.cpp

"$(INTDIR)\MsgOpt_Wnd.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\MsgOptionDlg.cpp

"$(INTDIR)\MsgOptionDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\MySpy.cpp

"$(INTDIR)\MySpy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\MySpy.rc

"$(INTDIR)\MySpy.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\MyStatic.cpp

"$(INTDIR)\MyStatic.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "MySpy - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\MySpy.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\MySpy.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "MySpy - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\MySpy.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\MySpy.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\WindowDoc.cpp

"$(INTDIR)\WindowDoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\WindowFrame.cpp

"$(INTDIR)\WindowFrame.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\WindowPropertyDlg.cpp

"$(INTDIR)\WindowPropertyDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\WindowView.cpp

"$(INTDIR)\WindowView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\WndProperty_Class.cpp

"$(INTDIR)\WndProperty_Class.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\WndProperty_General.cpp

"$(INTDIR)\WndProperty_General.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\WndProperty_Process.cpp

"$(INTDIR)\WndProperty_Process.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\WndProperty_Style.cpp

"$(INTDIR)\WndProperty_Style.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"


SOURCE=.\WndProperty_Wnd.cpp

"$(INTDIR)\WndProperty_Wnd.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MySpy.pch"



!ENDIF 

