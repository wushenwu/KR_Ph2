# Microsoft Developer Studio Generated NMAKE File, Based on DllWindow.dsp
!IF "$(CFG)" == ""
CFG=DllWindow - Win32 Debug
!MESSAGE No configuration specified. Defaulting to DllWindow - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "DllWindow - Win32 Release" && "$(CFG)" != "DllWindow - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "DllWindow.mak" CFG="DllWindow - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "DllWindow - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "DllWindow - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "DllWindow - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\DllWindow.dll"


CLEAN :
	-@erase "$(INTDIR)\DllWindow.obj"
	-@erase "$(INTDIR)\DllWindow.pch"
	-@erase "$(INTDIR)\res.res"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\DllWindow.dll"
	-@erase "$(OUTDIR)\DllWindow.exp"
	-@erase "$(OUTDIR)\DllWindow.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLLWINDOW_EXPORTS" /Fp"$(INTDIR)\DllWindow.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\res.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DllWindow.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\DllWindow.pdb" /machine:I386 /out:"$(OUTDIR)\DllWindow.dll" /implib:"$(OUTDIR)\DllWindow.lib" 
LINK32_OBJS= \
	"$(INTDIR)\DllWindow.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\res.res"

"$(OUTDIR)\DllWindow.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "DllWindow - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\DllWindow.dll"


CLEAN :
	-@erase "$(INTDIR)\DllWindow.obj"
	-@erase "$(INTDIR)\DllWindow.pch"
	-@erase "$(INTDIR)\res.res"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\DllWindow.dll"
	-@erase "$(OUTDIR)\DllWindow.exp"
	-@erase "$(OUTDIR)\DllWindow.ilk"
	-@erase "$(OUTDIR)\DllWindow.lib"
	-@erase "$(OUTDIR)\DllWindow.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLLWINDOW_EXPORTS" /Fp"$(INTDIR)\DllWindow.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\res.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DllWindow.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\DllWindow.pdb" /debug /machine:I386 /out:"$(OUTDIR)\DllWindow.dll" /implib:"$(OUTDIR)\DllWindow.lib" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\DllWindow.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\res.res"

"$(OUTDIR)\DllWindow.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("DllWindow.dep")
!INCLUDE "DllWindow.dep"
!ELSE 
!MESSAGE Warning: cannot find "DllWindow.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "DllWindow - Win32 Release" || "$(CFG)" == "DllWindow - Win32 Debug"
SOURCE=.\DllWindow.cpp

"$(INTDIR)\DllWindow.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DllWindow.pch"


SOURCE=.\res.rc

"$(INTDIR)\res.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "DllWindow - Win32 Release"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLLWINDOW_EXPORTS" /Fp"$(INTDIR)\DllWindow.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\DllWindow.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "DllWindow - Win32 Debug"

CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLLWINDOW_EXPORTS" /Fp"$(INTDIR)\DllWindow.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\DllWindow.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

