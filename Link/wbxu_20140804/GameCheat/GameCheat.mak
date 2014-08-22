# Microsoft Developer Studio Generated NMAKE File, Based on GameCheat.dsp
!IF "$(CFG)" == ""
CFG=GameCheat - Win32 Debug
!MESSAGE No configuration specified. Defaulting to GameCheat - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "GameCheat - Win32 Release" && "$(CFG)" != "GameCheat - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "GameCheat.mak" CFG="GameCheat - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "GameCheat - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "GameCheat - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "GameCheat - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\GameCheat.exe"


CLEAN :
	-@erase "$(INTDIR)\GameCheat.obj"
	-@erase "$(INTDIR)\GameCheat.pch"
	-@erase "$(INTDIR)\GameCheat.res"
	-@erase "$(INTDIR)\GameCheatDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\GameCheat.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\GameCheat.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\GameCheat.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\GameCheat.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\GameCheat.pdb" /machine:I386 /out:"$(OUTDIR)\GameCheat.exe" 
LINK32_OBJS= \
	"$(INTDIR)\GameCheat.obj" \
	"$(INTDIR)\GameCheatDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\GameCheat.res"

"$(OUTDIR)\GameCheat.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "GameCheat - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\GameCheat.exe"


CLEAN :
	-@erase "$(INTDIR)\GameCheat.obj"
	-@erase "$(INTDIR)\GameCheat.pch"
	-@erase "$(INTDIR)\GameCheat.res"
	-@erase "$(INTDIR)\GameCheatDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\GameCheat.exe"
	-@erase "$(OUTDIR)\GameCheat.ilk"
	-@erase "$(OUTDIR)\GameCheat.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\GameCheat.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\GameCheat.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\GameCheat.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\GameCheat.pdb" /debug /machine:I386 /out:"$(OUTDIR)\GameCheat.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\GameCheat.obj" \
	"$(INTDIR)\GameCheatDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\GameCheat.res"

"$(OUTDIR)\GameCheat.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("GameCheat.dep")
!INCLUDE "GameCheat.dep"
!ELSE 
!MESSAGE Warning: cannot find "GameCheat.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "GameCheat - Win32 Release" || "$(CFG)" == "GameCheat - Win32 Debug"
SOURCE=.\GameCheat.cpp

"$(INTDIR)\GameCheat.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GameCheat.pch"


SOURCE=.\GameCheat.rc

"$(INTDIR)\GameCheat.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\GameCheatDlg.cpp

"$(INTDIR)\GameCheatDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GameCheat.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "GameCheat - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\GameCheat.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\GameCheat.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "GameCheat - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\GameCheat.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\GameCheat.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

