# Microsoft Developer Studio Generated NMAKE File, Based on Reg.dsp
!IF "$(CFG)" == ""
CFG=Reg - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Reg - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Reg - Win32 Release" && "$(CFG)" != "Reg - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Reg.mak" CFG="Reg - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Reg - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Reg - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "Reg - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Reg.exe"


CLEAN :
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\ModifyValueDLG.obj"
	-@erase "$(INTDIR)\Reg.obj"
	-@erase "$(INTDIR)\Reg.pch"
	-@erase "$(INTDIR)\Reg.res"
	-@erase "$(INTDIR)\RegDoc.obj"
	-@erase "$(INTDIR)\reglistview.obj"
	-@erase "$(INTDIR)\regtreeview.obj"
	-@erase "$(INTDIR)\RegView.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Reg.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Reg.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Reg.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Reg.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Reg.pdb" /machine:I386 /out:"$(OUTDIR)\Reg.exe" 
LINK32_OBJS= \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\Reg.obj" \
	"$(INTDIR)\RegDoc.obj" \
	"$(INTDIR)\reglistview.obj" \
	"$(INTDIR)\regtreeview.obj" \
	"$(INTDIR)\RegView.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Reg.res" \
	"$(INTDIR)\ModifyValueDLG.obj"

"$(OUTDIR)\Reg.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Reg - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\Reg.exe" "$(OUTDIR)\Reg.bsc"


CLEAN :
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\MainFrm.sbr"
	-@erase "$(INTDIR)\ModifyValueDLG.obj"
	-@erase "$(INTDIR)\ModifyValueDLG.sbr"
	-@erase "$(INTDIR)\Reg.obj"
	-@erase "$(INTDIR)\Reg.pch"
	-@erase "$(INTDIR)\Reg.res"
	-@erase "$(INTDIR)\Reg.sbr"
	-@erase "$(INTDIR)\RegDoc.obj"
	-@erase "$(INTDIR)\RegDoc.sbr"
	-@erase "$(INTDIR)\reglistview.obj"
	-@erase "$(INTDIR)\reglistview.sbr"
	-@erase "$(INTDIR)\regtreeview.obj"
	-@erase "$(INTDIR)\regtreeview.sbr"
	-@erase "$(INTDIR)\RegView.obj"
	-@erase "$(INTDIR)\RegView.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Reg.bsc"
	-@erase "$(OUTDIR)\Reg.exe"
	-@erase "$(OUTDIR)\Reg.ilk"
	-@erase "$(OUTDIR)\Reg.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\Reg.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Reg.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Reg.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\MainFrm.sbr" \
	"$(INTDIR)\Reg.sbr" \
	"$(INTDIR)\RegDoc.sbr" \
	"$(INTDIR)\reglistview.sbr" \
	"$(INTDIR)\regtreeview.sbr" \
	"$(INTDIR)\RegView.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\ModifyValueDLG.sbr"

"$(OUTDIR)\Reg.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Reg.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Reg.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\Reg.obj" \
	"$(INTDIR)\RegDoc.obj" \
	"$(INTDIR)\reglistview.obj" \
	"$(INTDIR)\regtreeview.obj" \
	"$(INTDIR)\RegView.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Reg.res" \
	"$(INTDIR)\ModifyValueDLG.obj"

"$(OUTDIR)\Reg.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("Reg.dep")
!INCLUDE "Reg.dep"
!ELSE 
!MESSAGE Warning: cannot find "Reg.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Reg - Win32 Release" || "$(CFG)" == "Reg - Win32 Debug"
SOURCE=.\MainFrm.cpp

!IF  "$(CFG)" == "Reg - Win32 Release"


"$(INTDIR)\MainFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ELSEIF  "$(CFG)" == "Reg - Win32 Debug"


"$(INTDIR)\MainFrm.obj"	"$(INTDIR)\MainFrm.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ENDIF 

SOURCE=.\ModifyValueDLG.cpp

!IF  "$(CFG)" == "Reg - Win32 Release"


"$(INTDIR)\ModifyValueDLG.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ELSEIF  "$(CFG)" == "Reg - Win32 Debug"


"$(INTDIR)\ModifyValueDLG.obj"	"$(INTDIR)\ModifyValueDLG.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ENDIF 

SOURCE=.\Reg.cpp

!IF  "$(CFG)" == "Reg - Win32 Release"


"$(INTDIR)\Reg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ELSEIF  "$(CFG)" == "Reg - Win32 Debug"


"$(INTDIR)\Reg.obj"	"$(INTDIR)\Reg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ENDIF 

SOURCE=.\Reg.rc

"$(INTDIR)\Reg.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\RegDoc.cpp

!IF  "$(CFG)" == "Reg - Win32 Release"


"$(INTDIR)\RegDoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ELSEIF  "$(CFG)" == "Reg - Win32 Debug"


"$(INTDIR)\RegDoc.obj"	"$(INTDIR)\RegDoc.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ENDIF 

SOURCE=.\reglistview.cpp

!IF  "$(CFG)" == "Reg - Win32 Release"


"$(INTDIR)\reglistview.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ELSEIF  "$(CFG)" == "Reg - Win32 Debug"


"$(INTDIR)\reglistview.obj"	"$(INTDIR)\reglistview.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ENDIF 

SOURCE=.\regtreeview.cpp

!IF  "$(CFG)" == "Reg - Win32 Release"


"$(INTDIR)\regtreeview.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ELSEIF  "$(CFG)" == "Reg - Win32 Debug"


"$(INTDIR)\regtreeview.obj"	"$(INTDIR)\regtreeview.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ENDIF 

SOURCE=.\RegView.cpp

!IF  "$(CFG)" == "Reg - Win32 Release"


"$(INTDIR)\RegView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ELSEIF  "$(CFG)" == "Reg - Win32 Debug"


"$(INTDIR)\RegView.obj"	"$(INTDIR)\RegView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Reg.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "Reg - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\Reg.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Reg.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "Reg - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\Reg.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\Reg.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

