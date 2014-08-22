# Microsoft Developer Studio Generated NMAKE File, Based on LoadDLL.dsp
!IF "$(CFG)" == ""
CFG=LoadDLL - Win32 Debug
!MESSAGE No configuration specified. Defaulting to LoadDLL - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "LoadDLL - Win32 Release" && "$(CFG)" != "LoadDLL - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "LoadDLL.mak" CFG="LoadDLL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "LoadDLL - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "LoadDLL - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "LoadDLL - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\LoadDLL.exe"


CLEAN :
	-@erase "$(INTDIR)\LoadDLL.obj"
	-@erase "$(INTDIR)\LoadDLL.pch"
	-@erase "$(INTDIR)\LoadDLL.res"
	-@erase "$(INTDIR)\LoadDLLDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\LoadDLL.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\LoadDLL.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\LoadDLL.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\LoadDLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\LoadDLL.pdb" /machine:I386 /out:"$(OUTDIR)\LoadDLL.exe" 
LINK32_OBJS= \
	"$(INTDIR)\LoadDLL.obj" \
	"$(INTDIR)\LoadDLLDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\LoadDLL.res"

"$(OUTDIR)\LoadDLL.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "LoadDLL - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\LoadDLL.exe"


CLEAN :
	-@erase "$(INTDIR)\LoadDLL.obj"
	-@erase "$(INTDIR)\LoadDLL.pch"
	-@erase "$(INTDIR)\LoadDLL.res"
	-@erase "$(INTDIR)\LoadDLLDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\LoadDLL.exe"
	-@erase "$(OUTDIR)\LoadDLL.ilk"
	-@erase "$(OUTDIR)\LoadDLL.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\LoadDLL.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\LoadDLL.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\LoadDLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\LoadDLL.pdb" /debug /machine:I386 /out:"$(OUTDIR)\LoadDLL.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\LoadDLL.obj" \
	"$(INTDIR)\LoadDLLDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\LoadDLL.res"

"$(OUTDIR)\LoadDLL.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("LoadDLL.dep")
!INCLUDE "LoadDLL.dep"
!ELSE 
!MESSAGE Warning: cannot find "LoadDLL.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "LoadDLL - Win32 Release" || "$(CFG)" == "LoadDLL - Win32 Debug"
SOURCE=.\LoadDLL.cpp

"$(INTDIR)\LoadDLL.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\LoadDLL.pch"


SOURCE=.\LoadDLL.rc

"$(INTDIR)\LoadDLL.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\LoadDLLDlg.cpp

"$(INTDIR)\LoadDLLDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\LoadDLL.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "LoadDLL - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\LoadDLL.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\LoadDLL.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "LoadDLL - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\LoadDLL.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\LoadDLL.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

