# Microsoft Developer Studio Generated NMAKE File, Based on Teris_SDK.dsp
!IF "$(CFG)" == ""
CFG=Teris_SDK - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Teris_SDK - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Teris_SDK - Win32 Release" && "$(CFG)" != "Teris_SDK - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Teris_SDK.mak" CFG="Teris_SDK - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Teris_SDK - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Teris_SDK - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "Teris_SDK - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Teris_SDK.exe"


CLEAN :
	-@erase "$(INTDIR)\CGame.obj"
	-@erase "$(INTDIR)\CShape.obj"
	-@erase "$(INTDIR)\CUI.OBJ"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\Teris_SDK.obj"
	-@erase "$(INTDIR)\Teris_SDK.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Teris_SDK.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Teris_SDK.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Teris_SDK.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Teris_SDK.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Teris_SDK.pdb" /machine:I386 /out:"$(OUTDIR)\Teris_SDK.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CGame.obj" \
	"$(INTDIR)\CShape.obj" \
	"$(INTDIR)\CUI.OBJ" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Teris_SDK.obj" \
	"$(INTDIR)\Teris_SDK.res"

"$(OUTDIR)\Teris_SDK.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Teris_SDK - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\Teris_SDK.exe" "$(OUTDIR)\Teris_SDK.bsc"


CLEAN :
	-@erase "$(INTDIR)\CGame.obj"
	-@erase "$(INTDIR)\CGame.sbr"
	-@erase "$(INTDIR)\CShape.obj"
	-@erase "$(INTDIR)\CShape.sbr"
	-@erase "$(INTDIR)\CUI.OBJ"
	-@erase "$(INTDIR)\CUI.SBR"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\Teris_SDK.obj"
	-@erase "$(INTDIR)\Teris_SDK.res"
	-@erase "$(INTDIR)\Teris_SDK.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Teris_SDK.bsc"
	-@erase "$(OUTDIR)\Teris_SDK.exe"
	-@erase "$(OUTDIR)\Teris_SDK.ilk"
	-@erase "$(OUTDIR)\Teris_SDK.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MLd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\Teris_SDK.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Teris_SDK.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Teris_SDK.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\CGame.sbr" \
	"$(INTDIR)\CShape.sbr" \
	"$(INTDIR)\CUI.SBR" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\Teris_SDK.sbr"

"$(OUTDIR)\Teris_SDK.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Teris_SDK.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Teris_SDK.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\CGame.obj" \
	"$(INTDIR)\CShape.obj" \
	"$(INTDIR)\CUI.OBJ" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Teris_SDK.obj" \
	"$(INTDIR)\Teris_SDK.res"

"$(OUTDIR)\Teris_SDK.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("Teris_SDK.dep")
!INCLUDE "Teris_SDK.dep"
!ELSE 
!MESSAGE Warning: cannot find "Teris_SDK.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Teris_SDK - Win32 Release" || "$(CFG)" == "Teris_SDK - Win32 Debug"
SOURCE=.\CGame.cpp

!IF  "$(CFG)" == "Teris_SDK - Win32 Release"


"$(INTDIR)\CGame.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Teris_SDK - Win32 Debug"


"$(INTDIR)\CGame.obj"	"$(INTDIR)\CGame.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\CShape.cpp

!IF  "$(CFG)" == "Teris_SDK - Win32 Release"


"$(INTDIR)\CShape.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Teris_SDK - Win32 Debug"


"$(INTDIR)\CShape.obj"	"$(INTDIR)\CShape.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\CUI.CPP

!IF  "$(CFG)" == "Teris_SDK - Win32 Release"


"$(INTDIR)\CUI.OBJ" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Teris_SDK - Win32 Debug"


"$(INTDIR)\CUI.OBJ"	"$(INTDIR)\CUI.SBR" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "Teris_SDK - Win32 Release"


"$(INTDIR)\StdAfx.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Teris_SDK - Win32 Debug"


"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\Teris_SDK.cpp

!IF  "$(CFG)" == "Teris_SDK - Win32 Release"


"$(INTDIR)\Teris_SDK.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Teris_SDK - Win32 Debug"


"$(INTDIR)\Teris_SDK.obj"	"$(INTDIR)\Teris_SDK.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\Teris_SDK.rc

"$(INTDIR)\Teris_SDK.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

