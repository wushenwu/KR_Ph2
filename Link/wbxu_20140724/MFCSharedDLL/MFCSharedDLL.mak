# Microsoft Developer Studio Generated NMAKE File, Based on MFCSharedDLL.dsp
!IF "$(CFG)" == ""
CFG=MFCSharedDLL - Win32 Debug
!MESSAGE No configuration specified. Defaulting to MFCSharedDLL - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "MFCSharedDLL - Win32 Release" && "$(CFG)" != "MFCSharedDLL - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "MFCSharedDLL.mak" CFG="MFCSharedDLL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "MFCSharedDLL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "MFCSharedDLL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "MFCSharedDLL - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\MFCSharedDLL.dll"


CLEAN :
	-@erase "$(INTDIR)\MFCSharedDLL.obj"
	-@erase "$(INTDIR)\MFCSharedDLL.pch"
	-@erase "$(INTDIR)\MFCSharedDLL.res"
	-@erase "$(INTDIR)\MyDialog.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\MFCSharedDLL.dll"
	-@erase "$(OUTDIR)\MFCSharedDLL.exp"
	-@erase "$(OUTDIR)\MFCSharedDLL.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\MFCSharedDLL.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\MFCSharedDLL.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\MFCSharedDLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\MFCSharedDLL.pdb" /machine:I386 /def:".\MFCSharedDLL.def" /out:"$(OUTDIR)\MFCSharedDLL.dll" /implib:"$(OUTDIR)\MFCSharedDLL.lib" 
DEF_FILE= \
	".\MFCSharedDLL.def"
LINK32_OBJS= \
	"$(INTDIR)\MFCSharedDLL.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MFCSharedDLL.res" \
	"$(INTDIR)\MyDialog.obj"

"$(OUTDIR)\MFCSharedDLL.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "MFCSharedDLL - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\CallWindow\Debug\MFCSharedDLL.dll"


CLEAN :
	-@erase "$(INTDIR)\MFCSharedDLL.obj"
	-@erase "$(INTDIR)\MFCSharedDLL.pch"
	-@erase "$(INTDIR)\MFCSharedDLL.res"
	-@erase "$(INTDIR)\MyDialog.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\MFCSharedDLL.exp"
	-@erase "$(OUTDIR)\MFCSharedDLL.lib"
	-@erase "$(OUTDIR)\MFCSharedDLL.pdb"
	-@erase "..\CallWindow\Debug\MFCSharedDLL.dll"
	-@erase "..\CallWindow\Debug\MFCSharedDLL.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\MFCSharedDLL.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ    /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\MFCSharedDLL.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\MFCSharedDLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\MFCSharedDLL.pdb" /debug /machine:I386 /def:".\MFCSharedDLL.def" /out:"../CallWindow/Debug/MFCSharedDLL.dll" /implib:"$(OUTDIR)\MFCSharedDLL.lib" /pdbtype:sept 
DEF_FILE= \
	".\MFCSharedDLL.def"
LINK32_OBJS= \
	"$(INTDIR)\MFCSharedDLL.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MFCSharedDLL.res" \
	"$(INTDIR)\MyDialog.obj"

"..\CallWindow\Debug\MFCSharedDLL.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("MFCSharedDLL.dep")
!INCLUDE "MFCSharedDLL.dep"
!ELSE 
!MESSAGE Warning: cannot find "MFCSharedDLL.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "MFCSharedDLL - Win32 Release" || "$(CFG)" == "MFCSharedDLL - Win32 Debug"
SOURCE=.\MFCSharedDLL.cpp

"$(INTDIR)\MFCSharedDLL.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MFCSharedDLL.pch"


SOURCE=.\MFCSharedDLL.rc

"$(INTDIR)\MFCSharedDLL.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\MyDialog.cpp

"$(INTDIR)\MyDialog.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MFCSharedDLL.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "MFCSharedDLL - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\MFCSharedDLL.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\MFCSharedDLL.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "MFCSharedDLL - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\MFCSharedDLL.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ    /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\MFCSharedDLL.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

