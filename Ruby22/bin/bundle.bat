@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"c:\dev\Ruby22\bin\ruby.exe" "c:/dev/Ruby22/bin/bundle" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"c:\dev\Ruby22\bin\ruby.exe" "%~dpn0" %*
