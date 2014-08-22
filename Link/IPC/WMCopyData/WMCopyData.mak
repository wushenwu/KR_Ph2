# Microsoft Developer Studio Generated NMAKE File, Based on WMCopyData.dsp
!IF "$(CFG)" == ""
CFG=WMCopyData - Win32 Debug
!MESSAGE No configuration specified. Defaulting to WMCopyData - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "WMCopyData - Win32 Release" && "$(CFG)" != "WMCopyData - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "WMCopyData.mak" CFG="WMCopyData - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "WMCopyData - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "WMCopyData - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "WMCopyData - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\WMCopyData.exe"


CLEAN :
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\WMCopyData.obj"
	-@erase "$(INTDIR)\WMCopyData.pch"
	-@erase "$(INTDIR)\WMCopyData.res"
	-@erase "$(INTDIR)\WMCopyDataDlg.obj"
	-@erase "$(OUTDIR)\WMCopyData.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\WMCopyData.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\WMCopyData.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\WMCopyData.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\WMCopyData.pdb" /machine:I386 /out:"$(OUTDIR)\WMCopyData.exe" 
LINK32_OBJS= \
	"$(INTDIR)\WMCopyData.obj" \
	"$(INTDIR)\WMCopyDataDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WMCopyData.res"

"$(OUTDIR)\WMCopyData.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "WMCopyData - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\WMCopyData.exe"


CLEAN :
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\WMCopyData.obj"
	-@erase "$(INTDIR)\WMCopyData.pch"
	-@erase "$(INTDIR)\WMCopyData.res"
	-@erase "$(INTDIR)\WMCopyDataDlg.obj"
	-@erase "$(OUTDIR)\WMCopyData.exe"
	-@erase "$(OUTDIR)\WMCopyData.ilk"
	-@erase "$(OUTDIR)\WMCopyData.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\WMCopyData.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\WMCopyData.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\WMCopyData.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\WMCopyData.pdb" /debug /machine:I386 /out:"$(OUTDIR)\WMCopyData.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\WMCopyData.obj" \
	"$(INTDIR)\WMCopyDataDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WMCopyData.res"

"$(OUTDIR)\WMCopyData.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("WMCopyData.dep")
!INCLUDE "WMCopyData.dep"
!ELSE 
!MESSAGE Warning: cannot find "WMCopyData.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "WMCopyData - Win32 Release" || "$(CFG)" == "WMCopyData - Win32 Debug"
SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "WMCopyData - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\WMCopyData.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\WMCopyData.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "WMCopyData - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\WMCopyData.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\WMCopyData.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\WMCopyData.cpp

"$(INTDIR)\WMCopyData.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\WMCopyData.pch"


SOURCE=.\WMCopyData.rc

"$(INTDIR)\WMCopyData.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\WMCopyDataDlg.cpp

"$(INTDIR)\WMCopyDataDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\WMCopyData.pch"



!ENDIF 

