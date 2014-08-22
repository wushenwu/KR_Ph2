# Microsoft Developer Studio Generated NMAKE File, Based on InjectDll.dsp
!IF "$(CFG)" == ""
CFG=InjectDll - Win32 Debug
!MESSAGE No configuration specified. Defaulting to InjectDll - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "InjectDll - Win32 Release" && "$(CFG)" != "InjectDll - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "InjectDll.mak" CFG="InjectDll - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "InjectDll - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "InjectDll - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "InjectDll - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\InjectDll.dll"


CLEAN :
	-@erase "$(INTDIR)\InjectDll.obj"
	-@erase "$(INTDIR)\InjectDll.pch"
	-@erase "$(INTDIR)\Process.obj"
	-@erase "$(INTDIR)\res.res"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\InjectDll.dll"
	-@erase "$(OUTDIR)\InjectDll.exp"
	-@erase "$(OUTDIR)\InjectDll.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "INJECTDLL_EXPORTS" /Fp"$(INTDIR)\InjectDll.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\res.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\InjectDll.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\InjectDll.pdb" /machine:I386 /out:"$(OUTDIR)\InjectDll.dll" /implib:"$(OUTDIR)\InjectDll.lib" 
LINK32_OBJS= \
	"$(INTDIR)\InjectDll.obj" \
	"$(INTDIR)\Process.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\res.res"

"$(OUTDIR)\InjectDll.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "InjectDll - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\InjectDll.dll" "$(OUTDIR)\InjectDll.bsc"


CLEAN :
	-@erase "$(INTDIR)\InjectDll.obj"
	-@erase "$(INTDIR)\InjectDll.pch"
	-@erase "$(INTDIR)\InjectDll.sbr"
	-@erase "$(INTDIR)\Process.obj"
	-@erase "$(INTDIR)\Process.sbr"
	-@erase "$(INTDIR)\res.res"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\InjectDll.bsc"
	-@erase "$(OUTDIR)\InjectDll.dll"
	-@erase "$(OUTDIR)\InjectDll.exp"
	-@erase "$(OUTDIR)\InjectDll.ilk"
	-@erase "$(OUTDIR)\InjectDll.lib"
	-@erase "$(OUTDIR)\InjectDll.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "INJECTDLL_EXPORTS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\InjectDll.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\res.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\InjectDll.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\InjectDll.sbr" \
	"$(INTDIR)\Process.sbr" \
	"$(INTDIR)\StdAfx.sbr"

"$(OUTDIR)\InjectDll.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\InjectDll.pdb" /debug /machine:I386 /out:"$(OUTDIR)\InjectDll.dll" /implib:"$(OUTDIR)\InjectDll.lib" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\InjectDll.obj" \
	"$(INTDIR)\Process.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\res.res"

"$(OUTDIR)\InjectDll.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("InjectDll.dep")
!INCLUDE "InjectDll.dep"
!ELSE 
!MESSAGE Warning: cannot find "InjectDll.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "InjectDll - Win32 Release" || "$(CFG)" == "InjectDll - Win32 Debug"
SOURCE=.\InjectDll.cpp

!IF  "$(CFG)" == "InjectDll - Win32 Release"


"$(INTDIR)\InjectDll.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\InjectDll.pch"


!ELSEIF  "$(CFG)" == "InjectDll - Win32 Debug"


"$(INTDIR)\InjectDll.obj"	"$(INTDIR)\InjectDll.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\InjectDll.pch"


!ENDIF 

SOURCE=.\Process.cpp

!IF  "$(CFG)" == "InjectDll - Win32 Release"


"$(INTDIR)\Process.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\InjectDll.pch"


!ELSEIF  "$(CFG)" == "InjectDll - Win32 Debug"


"$(INTDIR)\Process.obj"	"$(INTDIR)\Process.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\InjectDll.pch"


!ENDIF 

SOURCE=.\res.rc

"$(INTDIR)\res.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "InjectDll - Win32 Release"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "INJECTDLL_EXPORTS" /Fp"$(INTDIR)\InjectDll.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\InjectDll.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "InjectDll - Win32 Debug"

CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "INJECTDLL_EXPORTS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\InjectDll.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\InjectDll.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

