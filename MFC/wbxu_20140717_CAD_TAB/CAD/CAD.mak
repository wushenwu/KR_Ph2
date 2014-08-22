# Microsoft Developer Studio Generated NMAKE File, Based on CAD.dsp
!IF "$(CFG)" == ""
CFG=CAD - Win32 Debug
!MESSAGE No configuration specified. Defaulting to CAD - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "CAD - Win32 Release" && "$(CFG)" != "CAD - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CAD.mak" CFG="CAD - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CAD - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "CAD - Win32 Debug" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "CAD - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\CAD.exe"


CLEAN :
	-@erase "$(INTDIR)\CAD.obj"
	-@erase "$(INTDIR)\CAD.res"
	-@erase "$(INTDIR)\CADDoc.obj"
	-@erase "$(INTDIR)\CADView.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\MyCmdMgr.obj"
	-@erase "$(INTDIR)\MyColorBtn.obj"
	-@erase "$(INTDIR)\MyCommand.obj"
	-@erase "$(INTDIR)\MyDeleteCommand.obj"
	-@erase "$(INTDIR)\MyDrawCommand.obj"
	-@erase "$(INTDIR)\MyEditView.obj"
	-@erase "$(INTDIR)\MyEllipse.obj"
	-@erase "$(INTDIR)\MyEllipseFactory.obj"
	-@erase "$(INTDIR)\MyLine.obj"
	-@erase "$(INTDIR)\MyLineFactory.obj"
	-@erase "$(INTDIR)\MyList.obj"
	-@erase "$(INTDIR)\MyModifyCommand.obj"
	-@erase "$(INTDIR)\MyRect.obj"
	-@erase "$(INTDIR)\MyRectFactory.obj"
	-@erase "$(INTDIR)\MyShape.obj"
	-@erase "$(INTDIR)\MyShapeFactory.obj"
	-@erase "$(INTDIR)\setdlg.obj"
	-@erase "$(INTDIR)\shapestreeview.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\CAD.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\CAD.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\CAD.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CAD.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\CAD.pdb" /machine:I386 /out:"$(OUTDIR)\CAD.exe" 
LINK32_OBJS= \
	"$(INTDIR)\MyEllipse.obj" \
	"$(INTDIR)\MyEllipseFactory.obj" \
	"$(INTDIR)\MyLine.obj" \
	"$(INTDIR)\MyLineFactory.obj" \
	"$(INTDIR)\MyRect.obj" \
	"$(INTDIR)\MyRectFactory.obj" \
	"$(INTDIR)\MyShape.obj" \
	"$(INTDIR)\MyShapeFactory.obj" \
	"$(INTDIR)\CAD.obj" \
	"$(INTDIR)\CADDoc.obj" \
	"$(INTDIR)\CADView.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\MyList.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MyCmdMgr.obj" \
	"$(INTDIR)\MyCommand.obj" \
	"$(INTDIR)\MyDeleteCommand.obj" \
	"$(INTDIR)\MyDrawCommand.obj" \
	"$(INTDIR)\MyModifyCommand.obj" \
	"$(INTDIR)\MyColorBtn.obj" \
	"$(INTDIR)\setdlg.obj" \
	"$(INTDIR)\CAD.res" \
	"$(INTDIR)\shapestreeview.obj" \
	"$(INTDIR)\MyEditView.obj"

"$(OUTDIR)\CAD.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "CAD - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\CAD.exe"


CLEAN :
	-@erase "$(INTDIR)\CAD.obj"
	-@erase "$(INTDIR)\CAD.res"
	-@erase "$(INTDIR)\CADDoc.obj"
	-@erase "$(INTDIR)\CADView.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\MyCmdMgr.obj"
	-@erase "$(INTDIR)\MyColorBtn.obj"
	-@erase "$(INTDIR)\MyCommand.obj"
	-@erase "$(INTDIR)\MyDeleteCommand.obj"
	-@erase "$(INTDIR)\MyDrawCommand.obj"
	-@erase "$(INTDIR)\MyEditView.obj"
	-@erase "$(INTDIR)\MyEllipse.obj"
	-@erase "$(INTDIR)\MyEllipseFactory.obj"
	-@erase "$(INTDIR)\MyLine.obj"
	-@erase "$(INTDIR)\MyLineFactory.obj"
	-@erase "$(INTDIR)\MyList.obj"
	-@erase "$(INTDIR)\MyModifyCommand.obj"
	-@erase "$(INTDIR)\MyRect.obj"
	-@erase "$(INTDIR)\MyRectFactory.obj"
	-@erase "$(INTDIR)\MyShape.obj"
	-@erase "$(INTDIR)\MyShapeFactory.obj"
	-@erase "$(INTDIR)\setdlg.obj"
	-@erase "$(INTDIR)\shapestreeview.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\CAD.exe"
	-@erase "$(OUTDIR)\CAD.ilk"
	-@erase "$(OUTDIR)\CAD.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\CAD.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\CAD.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CAD.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\CAD.pdb" /debug /machine:I386 /out:"$(OUTDIR)\CAD.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\MyEllipse.obj" \
	"$(INTDIR)\MyEllipseFactory.obj" \
	"$(INTDIR)\MyLine.obj" \
	"$(INTDIR)\MyLineFactory.obj" \
	"$(INTDIR)\MyRect.obj" \
	"$(INTDIR)\MyRectFactory.obj" \
	"$(INTDIR)\MyShape.obj" \
	"$(INTDIR)\MyShapeFactory.obj" \
	"$(INTDIR)\CAD.obj" \
	"$(INTDIR)\CADDoc.obj" \
	"$(INTDIR)\CADView.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\MyList.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\MyCmdMgr.obj" \
	"$(INTDIR)\MyCommand.obj" \
	"$(INTDIR)\MyDeleteCommand.obj" \
	"$(INTDIR)\MyDrawCommand.obj" \
	"$(INTDIR)\MyModifyCommand.obj" \
	"$(INTDIR)\MyColorBtn.obj" \
	"$(INTDIR)\setdlg.obj" \
	"$(INTDIR)\CAD.res" \
	"$(INTDIR)\shapestreeview.obj" \
	"$(INTDIR)\MyEditView.obj"

"$(OUTDIR)\CAD.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("CAD.dep")
!INCLUDE "CAD.dep"
!ELSE 
!MESSAGE Warning: cannot find "CAD.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "CAD - Win32 Release" || "$(CFG)" == "CAD - Win32 Debug"
SOURCE=.\Shape\MyEllipse.cpp

"$(INTDIR)\MyEllipse.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Shape\MyEllipseFactory.cpp

"$(INTDIR)\MyEllipseFactory.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Shape\MyLine.cpp

"$(INTDIR)\MyLine.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Shape\MyLineFactory.cpp

"$(INTDIR)\MyLineFactory.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Shape\MyRect.cpp

"$(INTDIR)\MyRect.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Shape\MyRectFactory.cpp

"$(INTDIR)\MyRectFactory.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Shape\MyShape.cpp

"$(INTDIR)\MyShape.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Shape\MyShapeFactory.cpp

"$(INTDIR)\MyShapeFactory.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\CAD.cpp

"$(INTDIR)\CAD.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"


SOURCE=.\CAD.rc

"$(INTDIR)\CAD.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\CADDoc.cpp

"$(INTDIR)\CADDoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"


SOURCE=.\CADView.cpp

"$(INTDIR)\CADView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"


SOURCE=.\MainFrm.cpp

"$(INTDIR)\MainFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"


SOURCE=.\MyList.cpp

"$(INTDIR)\MyList.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"


SOURCE=.\StdAfx.cpp

"$(INTDIR)\StdAfx.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"


SOURCE=.\Command\MyCmdMgr.cpp

"$(INTDIR)\MyCmdMgr.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Command\MyCommand.cpp

"$(INTDIR)\MyCommand.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Command\MyDeleteCommand.cpp

"$(INTDIR)\MyDeleteCommand.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Command\MyDrawCommand.cpp

"$(INTDIR)\MyDrawCommand.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Command\MyModifyCommand.cpp

"$(INTDIR)\MyModifyCommand.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Set\MyColorBtn.cpp

"$(INTDIR)\MyColorBtn.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Set\setdlg.cpp

"$(INTDIR)\setdlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\MyEditView.cpp

"$(INTDIR)\MyEditView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"


SOURCE=.\shapestreeview.cpp

"$(INTDIR)\shapestreeview.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CAD.pch"



!ENDIF 

