# Microsoft Developer Studio Generated NMAKE File, Based on FileMgr.dsp
!IF "$(CFG)" == ""
CFG=FileMgr - Win32 Debug
!MESSAGE No configuration specified. Defaulting to FileMgr - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "FileMgr - Win32 Release" && "$(CFG)" != "FileMgr - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "FileMgr.mak" CFG="FileMgr - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FileMgr - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "FileMgr - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "FileMgr - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\FileMgr.exe"


CLEAN :
	-@erase "$(INTDIR)\FileMgr.obj"
	-@erase "$(INTDIR)\FileMgr.pch"
	-@erase "$(INTDIR)\FileMgr.res"
	-@erase "$(INTDIR)\FileMgrDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\FileMgr.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\FileMgr.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\FileMgr.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FileMgr.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\FileMgr.pdb" /machine:I386 /out:"$(OUTDIR)\FileMgr.exe" 
LINK32_OBJS= \
	"$(INTDIR)\FileMgr.obj" \
	"$(INTDIR)\FileMgrDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\FileMgr.res"

"$(OUTDIR)\FileMgr.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "FileMgr - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\FileMgr.exe"


CLEAN :
	-@erase "$(INTDIR)\FileMgr.obj"
	-@erase "$(INTDIR)\FileMgr.pch"
	-@erase "$(INTDIR)\FileMgr.res"
	-@erase "$(INTDIR)\FileMgrDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\FileMgr.exe"
	-@erase "$(OUTDIR)\FileMgr.ilk"
	-@erase "$(OUTDIR)\FileMgr.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\FileMgr.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\FileMgr.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FileMgr.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\FileMgr.pdb" /debug /machine:I386 /out:"$(OUTDIR)\FileMgr.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\FileMgr.obj" \
	"$(INTDIR)\FileMgrDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\FileMgr.res"

"$(OUTDIR)\FileMgr.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("FileMgr.dep")
!INCLUDE "FileMgr.dep"
!ELSE 
!MESSAGE Warning: cannot find "FileMgr.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "FileMgr - Win32 Release" || "$(CFG)" == "FileMgr - Win32 Debug"
SOURCE=.\FileMgr.cpp

"$(INTDIR)\FileMgr.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\FileMgr.pch"


SOURCE=.\FileMgr.rc

"$(INTDIR)\FileMgr.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\FileMgrDlg.cpp

"$(INTDIR)\FileMgrDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\FileMgr.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "FileMgr - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\FileMgr.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\FileMgr.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "FileMgr - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\FileMgr.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\FileMgr.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

