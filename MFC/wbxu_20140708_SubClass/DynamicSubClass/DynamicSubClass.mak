# Microsoft Developer Studio Generated NMAKE File, Based on DynamicSubClass.dsp
!IF "$(CFG)" == ""
CFG=DynamicSubClass - Win32 Debug
!MESSAGE No configuration specified. Defaulting to DynamicSubClass - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "DynamicSubClass - Win32 Release" && "$(CFG)" != "DynamicSubClass - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "DynamicSubClass.mak" CFG="DynamicSubClass - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "DynamicSubClass - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "DynamicSubClass - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "DynamicSubClass - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\DynamicSubClass.exe"


CLEAN :
	-@erase "$(INTDIR)\DynamicSubClass.obj"
	-@erase "$(INTDIR)\DynamicSubClass.pch"
	-@erase "$(INTDIR)\DynamicSubClass.res"
	-@erase "$(INTDIR)\DynamicSubClassDlg.obj"
	-@erase "$(INTDIR)\MyButton.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\DynamicSubClass.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\DynamicSubClass.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\DynamicSubClass.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DynamicSubClass.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\DynamicSubClass.pdb" /machine:I386 /out:"$(OUTDIR)\DynamicSubClass.exe" 
LINK32_OBJS= \
	"$(INTDIR)\DynamicSubClass.obj" \
	"$(INTDIR)\DynamicSubClassDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\DynamicSubClass.res" \
	"$(INTDIR)\MyButton.obj"

"$(OUTDIR)\DynamicSubClass.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "DynamicSubClass - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\DynamicSubClass.exe" "$(OUTDIR)\DynamicSubClass.bsc"


CLEAN :
	-@erase "$(INTDIR)\DynamicSubClass.obj"
	-@erase "$(INTDIR)\DynamicSubClass.pch"
	-@erase "$(INTDIR)\DynamicSubClass.res"
	-@erase "$(INTDIR)\DynamicSubClass.sbr"
	-@erase "$(INTDIR)\DynamicSubClassDlg.obj"
	-@erase "$(INTDIR)\DynamicSubClassDlg.sbr"
	-@erase "$(INTDIR)\MyButton.obj"
	-@erase "$(INTDIR)\MyButton.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\DynamicSubClass.bsc"
	-@erase "$(OUTDIR)\DynamicSubClass.exe"
	-@erase "$(OUTDIR)\DynamicSubClass.ilk"
	-@erase "$(OUTDIR)\DynamicSubClass.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\DynamicSubClass.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\DynamicSubClass.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\DynamicSubClass.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\DynamicSubClass.sbr" \
	"$(INTDIR)\DynamicSubClassDlg.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\MyButton.sbr"

"$(OUTDIR)\DynamicSubClass.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\DynamicSubClass.pdb" /debug /machine:I386 /out:"$(OUTDIR)\DynamicSubClass.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\DynamicSubClass.obj" \
	"$(INTDIR)\DynamicSubClassDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\DynamicSubClass.res" \
	"$(INTDIR)\MyButton.obj"

"$(OUTDIR)\DynamicSubClass.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("DynamicSubClass.dep")
!INCLUDE "DynamicSubClass.dep"
!ELSE 
!MESSAGE Warning: cannot find "DynamicSubClass.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "DynamicSubClass - Win32 Release" || "$(CFG)" == "DynamicSubClass - Win32 Debug"
SOURCE=.\DynamicSubClass.cpp

!IF  "$(CFG)" == "DynamicSubClass - Win32 Release"


"$(INTDIR)\DynamicSubClass.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DynamicSubClass.pch"


!ELSEIF  "$(CFG)" == "DynamicSubClass - Win32 Debug"


"$(INTDIR)\DynamicSubClass.obj"	"$(INTDIR)\DynamicSubClass.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DynamicSubClass.pch"


!ENDIF 

SOURCE=.\DynamicSubClass.rc

"$(INTDIR)\DynamicSubClass.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\DynamicSubClassDlg.cpp

!IF  "$(CFG)" == "DynamicSubClass - Win32 Release"


"$(INTDIR)\DynamicSubClassDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DynamicSubClass.pch"


!ELSEIF  "$(CFG)" == "DynamicSubClass - Win32 Debug"


"$(INTDIR)\DynamicSubClassDlg.obj"	"$(INTDIR)\DynamicSubClassDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DynamicSubClass.pch"


!ENDIF 

SOURCE=.\MyButton.cpp

!IF  "$(CFG)" == "DynamicSubClass - Win32 Release"


"$(INTDIR)\MyButton.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DynamicSubClass.pch"


!ELSEIF  "$(CFG)" == "DynamicSubClass - Win32 Debug"


"$(INTDIR)\MyButton.obj"	"$(INTDIR)\MyButton.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\DynamicSubClass.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "DynamicSubClass - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\DynamicSubClass.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\DynamicSubClass.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "DynamicSubClass - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\DynamicSubClass.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ   /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\DynamicSubClass.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

