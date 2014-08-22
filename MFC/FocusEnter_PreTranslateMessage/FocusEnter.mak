# Microsoft Developer Studio Generated NMAKE File, Based on FocusEnter.dsp
!IF "$(CFG)" == ""
CFG=FocusEnter - Win32 Debug
!MESSAGE No configuration specified. Defaulting to FocusEnter - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "FocusEnter - Win32 Release" && "$(CFG)" != "FocusEnter - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "FocusEnter.mak" CFG="FocusEnter - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FocusEnter - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "FocusEnter - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "FocusEnter - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\FocusEnter.exe"


CLEAN :
	-@erase "$(INTDIR)\FocusEnter.obj"
	-@erase "$(INTDIR)\FocusEnter.pch"
	-@erase "$(INTDIR)\FocusEnter.res"
	-@erase "$(INTDIR)\FocusEnterDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\FocusEnter.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\FocusEnter.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\FocusEnter.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FocusEnter.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\FocusEnter.pdb" /machine:I386 /out:"$(OUTDIR)\FocusEnter.exe" 
LINK32_OBJS= \
	"$(INTDIR)\FocusEnter.obj" \
	"$(INTDIR)\FocusEnterDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\FocusEnter.res"

"$(OUTDIR)\FocusEnter.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "FocusEnter - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\FocusEnter.exe" "$(OUTDIR)\FocusEnter.bsc"


CLEAN :
	-@erase "$(INTDIR)\FocusEnter.obj"
	-@erase "$(INTDIR)\FocusEnter.pch"
	-@erase "$(INTDIR)\FocusEnter.res"
	-@erase "$(INTDIR)\FocusEnter.sbr"
	-@erase "$(INTDIR)\FocusEnterDlg.obj"
	-@erase "$(INTDIR)\FocusEnterDlg.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\FocusEnter.bsc"
	-@erase "$(OUTDIR)\FocusEnter.exe"
	-@erase "$(OUTDIR)\FocusEnter.ilk"
	-@erase "$(OUTDIR)\FocusEnter.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\FocusEnter.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\FocusEnter.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FocusEnter.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\FocusEnter.sbr" \
	"$(INTDIR)\FocusEnterDlg.sbr" \
	"$(INTDIR)\StdAfx.sbr"

"$(OUTDIR)\FocusEnter.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\FocusEnter.pdb" /debug /machine:I386 /out:"$(OUTDIR)\FocusEnter.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\FocusEnter.obj" \
	"$(INTDIR)\FocusEnterDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\FocusEnter.res"

"$(OUTDIR)\FocusEnter.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("FocusEnter.dep")
!INCLUDE "FocusEnter.dep"
!ELSE 
!MESSAGE Warning: cannot find "FocusEnter.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "FocusEnter - Win32 Release" || "$(CFG)" == "FocusEnter - Win32 Debug"
SOURCE=.\FocusEnter.cpp

!IF  "$(CFG)" == "FocusEnter - Win32 Release"


"$(INTDIR)\FocusEnter.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\FocusEnter.pch"


!ELSEIF  "$(CFG)" == "FocusEnter - Win32 Debug"


"$(INTDIR)\FocusEnter.obj"	"$(INTDIR)\FocusEnter.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\FocusEnter.pch"


!ENDIF 

SOURCE=.\FocusEnter.rc

"$(INTDIR)\FocusEnter.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\FocusEnterDlg.cpp

!IF  "$(CFG)" == "FocusEnter - Win32 Release"


"$(INTDIR)\FocusEnterDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\FocusEnter.pch"


!ELSEIF  "$(CFG)" == "FocusEnter - Win32 Debug"


"$(INTDIR)\FocusEnterDlg.obj"	"$(INTDIR)\FocusEnterDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\FocusEnter.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "FocusEnter - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\FocusEnter.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\FocusEnter.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "FocusEnter - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\FocusEnter.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\FocusEnter.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

