# Microsoft Developer Studio Generated NMAKE File, Based on MFCExtDLL.dsp
!IF "$(CFG)" == ""
CFG=MFCExtDLL - Win32 Debug
!MESSAGE No configuration specified. Defaulting to MFCExtDLL - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "MFCExtDLL - Win32 Release" && "$(CFG)" != "MFCExtDLL - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "MFCExtDLL.mak" CFG="MFCExtDLL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "MFCExtDLL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "MFCExtDLL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "MFCExtDLL - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\MFCExtDLL.dll"


CLEAN :
	-@erase "$(INTDIR)\MFCExtDLL.obj"
	-@erase "$(INTDIR)\MFCExtDLL.pch"
	-@erase "$(INTDIR)\MFCExtDLL.res"
	-@erase "$(INTDIR)\MyButton.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\MFCExtDLL.dll"
	-@erase "$(OUTDIR)\MFCExtDLL.exp"
	-@erase "$(OUTDIR)\MFCExtDLL.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\MFCExtDLL.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\MFCExtDLL.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\MFCExtDLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\MFCExtDLL.pdb" /machine:I386 /def:".\MFCExtDLL.def" /out:"$(OUTDIR)\MFCExtDLL.dll" /implib:"$(OUTDIR)\MFCExtDLL.lib" 
DEF_FILE= \
	".\MFCExtDLL.def"
LINK32_OBJS= \
	"$(INTDIR)\MFCExtDLL.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MFCExtDLL.res" \
	"$(INTDIR)\MyButton.obj"

"$(OUTDIR)\MFCExtDLL.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "MFCExtDLL - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\CallWindow\Debug\MFCExtDLL.dll"


CLEAN :
	-@erase "$(INTDIR)\MFCExtDLL.obj"
	-@erase "$(INTDIR)\MFCExtDLL.pch"
	-@erase "$(INTDIR)\MFCExtDLL.res"
	-@erase "$(INTDIR)\MyButton.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\MFCExtDLL.exp"
	-@erase "$(OUTDIR)\MFCExtDLL.lib"
	-@erase "$(OUTDIR)\MFCExtDLL.pdb"
	-@erase "..\CallWindow\Debug\MFCExtDLL.dll"
	-@erase "..\CallWindow\Debug\MFCExtDLL.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\MFCExtDLL.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ    /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\MFCExtDLL.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\MFCExtDLL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\MFCExtDLL.pdb" /debug /machine:I386 /def:".\MFCExtDLL.def" /out:"../CallWindow/Debug/MFCExtDLL.dll" /implib:"$(OUTDIR)\MFCExtDLL.lib" /pdbtype:sept 
DEF_FILE= \
	".\MFCExtDLL.def"
LINK32_OBJS= \
	"$(INTDIR)\MFCExtDLL.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MFCExtDLL.res" \
	"$(INTDIR)\MyButton.obj"

"..\CallWindow\Debug\MFCExtDLL.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("MFCExtDLL.dep")
!INCLUDE "MFCExtDLL.dep"
!ELSE 
!MESSAGE Warning: cannot find "MFCExtDLL.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "MFCExtDLL - Win32 Release" || "$(CFG)" == "MFCExtDLL - Win32 Debug"
SOURCE=.\MFCExtDLL.cpp

"$(INTDIR)\MFCExtDLL.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MFCExtDLL.pch"


SOURCE=.\MFCExtDLL.rc

"$(INTDIR)\MFCExtDLL.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\MyButton.cpp

"$(INTDIR)\MyButton.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\MFCExtDLL.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "MFCExtDLL - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\MFCExtDLL.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\MFCExtDLL.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "MFCExtDLL - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\MFCExtDLL.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ    /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\MFCExtDLL.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

