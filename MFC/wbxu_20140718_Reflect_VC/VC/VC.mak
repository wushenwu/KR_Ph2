# Microsoft Developer Studio Generated NMAKE File, Based on VC.dsp
!IF "$(CFG)" == ""
CFG=VC - Win32 Debug
!MESSAGE No configuration specified. Defaulting to VC - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "VC - Win32 Release" && "$(CFG)" != "VC - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "VC.mak" CFG="VC - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "VC - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "VC - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "VC - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\VC.exe"


CLEAN :
	-@erase "$(INTDIR)\BuildView.obj"
	-@erase "$(INTDIR)\ChildFrm.obj"
	-@erase "$(INTDIR)\ClassView.obj"
	-@erase "$(INTDIR)\DebugView.obj"
	-@erase "$(INTDIR)\FileView.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\ResView.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\VC.obj"
	-@erase "$(INTDIR)\VC.pch"
	-@erase "$(INTDIR)\VC.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\VCDoc.obj"
	-@erase "$(INTDIR)\VCView.obj"
	-@erase "$(OUTDIR)\VC.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\VC.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\VC.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\VC.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\VC.pdb" /machine:I386 /out:"$(OUTDIR)\VC.exe" 
LINK32_OBJS= \
	"$(INTDIR)\ChildFrm.obj" \
	"$(INTDIR)\ClassView.obj" \
	"$(INTDIR)\FileView.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\ResView.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\VC.obj" \
	"$(INTDIR)\VCDoc.obj" \
	"$(INTDIR)\VCView.obj" \
	"$(INTDIR)\VC.res" \
	"$(INTDIR)\BuildView.obj" \
	"$(INTDIR)\DebugView.obj"

"$(OUTDIR)\VC.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "VC - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\VC.exe" "$(OUTDIR)\VC.bsc"


CLEAN :
	-@erase "$(INTDIR)\BuildView.obj"
	-@erase "$(INTDIR)\BuildView.sbr"
	-@erase "$(INTDIR)\ChildFrm.obj"
	-@erase "$(INTDIR)\ChildFrm.sbr"
	-@erase "$(INTDIR)\ClassView.obj"
	-@erase "$(INTDIR)\ClassView.sbr"
	-@erase "$(INTDIR)\DebugView.obj"
	-@erase "$(INTDIR)\DebugView.sbr"
	-@erase "$(INTDIR)\FileView.obj"
	-@erase "$(INTDIR)\FileView.sbr"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\MainFrm.sbr"
	-@erase "$(INTDIR)\ResView.obj"
	-@erase "$(INTDIR)\ResView.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\VC.obj"
	-@erase "$(INTDIR)\VC.pch"
	-@erase "$(INTDIR)\VC.res"
	-@erase "$(INTDIR)\VC.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\VCDoc.obj"
	-@erase "$(INTDIR)\VCDoc.sbr"
	-@erase "$(INTDIR)\VCView.obj"
	-@erase "$(INTDIR)\VCView.sbr"
	-@erase "$(OUTDIR)\VC.bsc"
	-@erase "$(OUTDIR)\VC.exe"
	-@erase "$(OUTDIR)\VC.ilk"
	-@erase "$(OUTDIR)\VC.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\VC.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\VC.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\VC.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\ChildFrm.sbr" \
	"$(INTDIR)\ClassView.sbr" \
	"$(INTDIR)\FileView.sbr" \
	"$(INTDIR)\MainFrm.sbr" \
	"$(INTDIR)\ResView.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\VC.sbr" \
	"$(INTDIR)\VCDoc.sbr" \
	"$(INTDIR)\VCView.sbr" \
	"$(INTDIR)\BuildView.sbr" \
	"$(INTDIR)\DebugView.sbr"

"$(OUTDIR)\VC.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\VC.pdb" /debug /machine:I386 /out:"$(OUTDIR)\VC.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\ChildFrm.obj" \
	"$(INTDIR)\ClassView.obj" \
	"$(INTDIR)\FileView.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\ResView.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\VC.obj" \
	"$(INTDIR)\VCDoc.obj" \
	"$(INTDIR)\VCView.obj" \
	"$(INTDIR)\VC.res" \
	"$(INTDIR)\BuildView.obj" \
	"$(INTDIR)\DebugView.obj"

"$(OUTDIR)\VC.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("VC.dep")
!INCLUDE "VC.dep"
!ELSE 
!MESSAGE Warning: cannot find "VC.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "VC - Win32 Release" || "$(CFG)" == "VC - Win32 Debug"
SOURCE=.\BuildView.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\BuildView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\BuildView.obj"	"$(INTDIR)\BuildView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 

SOURCE=.\ChildFrm.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\ChildFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\ChildFrm.obj"	"$(INTDIR)\ChildFrm.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 

SOURCE=.\ClassView.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\ClassView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\ClassView.obj"	"$(INTDIR)\ClassView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 

SOURCE=.\DebugView.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\DebugView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\DebugView.obj"	"$(INTDIR)\DebugView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 

SOURCE=.\FileView.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\FileView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\FileView.obj"	"$(INTDIR)\FileView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 

SOURCE=.\MainFrm.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\MainFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\MainFrm.obj"	"$(INTDIR)\MainFrm.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 

SOURCE=.\ResView.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\ResView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\ResView.obj"	"$(INTDIR)\ResView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "VC - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\VC.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\VC.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\VC.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\VC.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\VC.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\VC.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\VC.obj"	"$(INTDIR)\VC.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 

SOURCE=.\VC.rc

"$(INTDIR)\VC.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\VCDoc.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\VCDoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\VCDoc.obj"	"$(INTDIR)\VCDoc.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 

SOURCE=.\VCView.cpp

!IF  "$(CFG)" == "VC - Win32 Release"


"$(INTDIR)\VCView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ELSEIF  "$(CFG)" == "VC - Win32 Debug"


"$(INTDIR)\VCView.obj"	"$(INTDIR)\VCView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\VC.pch"


!ENDIF 


!ENDIF 

