# Microsoft Developer Studio Generated NMAKE File, Based on FileCopy.dsp
!IF "$(CFG)" == ""
CFG=FileCopy - Win32 Debug
!MESSAGE No configuration specified. Defaulting to FileCopy - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "FileCopy - Win32 Release" && "$(CFG)" != "FileCopy - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "FileCopy.mak" CFG="FileCopy - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FileCopy - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "FileCopy - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "FileCopy - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\FileCopy.exe"


CLEAN :
	-@erase "$(INTDIR)\FileCopy.obj"
	-@erase "$(INTDIR)\FileCopy.pch"
	-@erase "$(INTDIR)\FileCopy.res"
	-@erase "$(INTDIR)\FileCopyDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\FileCopy.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\FileCopy.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\FileCopy.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FileCopy.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\FileCopy.pdb" /machine:I386 /out:"$(OUTDIR)\FileCopy.exe" 
LINK32_OBJS= \
	"$(INTDIR)\FileCopy.obj" \
	"$(INTDIR)\FileCopyDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\FileCopy.res"

"$(OUTDIR)\FileCopy.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "FileCopy - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\FileCopy.exe" "$(OUTDIR)\FileCopy.pch"


CLEAN :
	-@erase "$(INTDIR)\FileCopy.obj"
	-@erase "$(INTDIR)\FileCopy.pch"
	-@erase "$(INTDIR)\FileCopy.res"
	-@erase "$(INTDIR)\FileCopyDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\FileCopy.exe"
	-@erase "$(OUTDIR)\FileCopy.ilk"
	-@erase "$(OUTDIR)\FileCopy.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\FileCopy.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\FileCopy.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\FileCopy.pdb" /debug /machine:I386 /out:"$(OUTDIR)\FileCopy.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\FileCopy.obj" \
	"$(INTDIR)\FileCopyDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\FileCopy.res"

"$(OUTDIR)\FileCopy.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("FileCopy.dep")
!INCLUDE "FileCopy.dep"
!ELSE 
!MESSAGE Warning: cannot find "FileCopy.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "FileCopy - Win32 Release" || "$(CFG)" == "FileCopy - Win32 Debug"
SOURCE=.\FileCopy.cpp

"$(INTDIR)\FileCopy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\FileCopy.pch"


SOURCE=.\FileCopy.rc

"$(INTDIR)\FileCopy.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\FileCopyDlg.cpp

"$(INTDIR)\FileCopyDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\FileCopy.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "FileCopy - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\FileCopy.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\FileCopy.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "FileCopy - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\FileCopy.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\FileCopy.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

