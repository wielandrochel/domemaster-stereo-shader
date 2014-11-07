@ECHO OFF
ECHO Arnold Shader Compiling Script 
ECHO Version 1.0 - 2014-11-06
ECHO ---------------------------------------
ECHO.
REM go to the compiling directory
cd C:\solidangle\Arnold-DomemasterStereo-src\source\DomemasterWxH\

ECHO  Compiling the Arnold Shader
cl /c /O2 /MD /W3 -DWIN_NT -DBIT64 DomemasterWxH.cpp

ECHO Linking Arnold Shader
link /nodefaultlib:LIBC.LIB /OPT:NOREF /DLL /OUT:DomemasterWxH.dll DomemasterWxH.obj "C:\solidangle\Arnold-4.2.0.6-windows\lib\ai.lib"