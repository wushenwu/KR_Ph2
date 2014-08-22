# Microsoft Developer Studio Generated NMAKE File, Based on MFCStaticDLL.dsp
!IF "$(CFG)" == ""
CFG=MFCStaticDLL - Win32 Debug
!MESSAGE No configuration specified. Defaulting to MFCStaticDLL - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "MFCStaticDLL - Win32 Release" && "$(CFG)" != "MFCStaticDLL - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "MFCStaticDLL.mak" CFG="MFCStaticDLL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "MFCStaticDLL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "MFCStaticDLL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "MFCStaticDLL - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\MFCStaticDLL.dll"


CLEAN :
	-@erase "$(INTDIR)\MFCStaticDLL.obj"
	-@erase "$(INTDIR)\MFCStaticDLL.pch"
	-@erase "$(INTDIR)\MFCStaticDLL.res"
	-@erase "$(INTDIR)\MyDialog.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\MFCStaticDLL.dll"
	-@erase "$(OUTDIR)\MFCStaticDLL.exp"
	-@erase "$(OUTDIR)\MFCStaticDLL.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\MFCStaticDLL.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\MFCStaticDLL.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\MFCStaticDLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\MFCStaticDLL.pdb" /machine:I386 /def:".\MFCStaticDLL.def" /out:"$(OUTDIR)\MFCStaticDLL.dll" /implib:"$(OUTDIR)\MFCStaticDLL.lib" 
DEF_FILE= \
	".\MFCStaticDLL.def"
LINK32_OBJS= \
	"$(INTDIR)\MFCStaticDLL.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MFCStaticDLL.res" \
	"$(INTDIR)\MyDialog.obj"

"$(OUTDIR)\MFCStaticDLL.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "MFCStaticDLL - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\CallWindow\Debug\MFCStaticDLL.dll"


CLEAN :
	-@erase "$(INTDIR)\MFCStaticDLL.obj"
	-@erase "$(INTDIR)\MFCStaticDLL.pch"
	-@erase "$(INTDIR)\MFCStaticDLL.res"
	-@erase "$(INTDIR)\MyDialog.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\MFCStaticDLL.exp"
	-@erase "$(OUTDIR)\MFCStaticDLL.lib"
	-@erase "$(OUTDIR)\MFCStaticDLL.pdb"
	-@erase "..\CallWindow\Debug\MFCStaticDLL.dll"
	-@erase "..\CallWindow\Debug\MFCStaticDLL.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\MFCStaticDLL.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ    /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\MFCStaticDLL.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\MFCStaticDLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\MFCStaticDLL.pdb" /debug /machine:I386 /def:".\MFCStaticDLL.def" /out:"../CallWindow/Debug/MFCStaticDLL.dll" /implib:"$(OUTDIR)\MFCStaticDLL.lib" /pdbtype:sept 
DEF_FILE= \
	".\MFCStaticDLL.def"
LINK32_OBJS= \
	"$(INTDIR)\MFCStaticDLL.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MFCStaticDLL.res" \
	"$(INTDIR)\MyDialog.obj"

"..\CallWindow\Debug\MFCStaticDLL.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("MFCStaticDLL.dep")
!INCLUDE "MFCStaticDLL.dep"
!ELSE 
!MESSAGE Warning: cannot find "MFCStaticDLL.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "MFCStaticDLL - Win32 Release" || "$(CFG)" == "MFCStaticDLL - Win32 Debug"
SOURCE=.\MFCStaticDLL.cpp

"$(INTDIR)\MFCStaticDLL.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MFCStaticDLL.pch"


SOURCE=.\MFCStaticDLL.rc

"$(INTDIR)\MFCStaticDLL.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\MyDialog.cpp

"$(INTDIR)\MyDialog.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MFCStaticDLL.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "MFCStaticDLL - Win32 Release"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\MFCStaticDLL.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\MFCStaticDLL.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "MFCStaticDLL - Win32 Debug"

CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\MFCStaticDLL.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ    /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\MFCStaticDLL.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

