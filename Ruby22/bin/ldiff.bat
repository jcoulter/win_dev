@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\dev\Ruby22\bin\ruby.exe" "C:/dev/Ruby22/bin/ldiff" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\dev\Ruby22\bin\ruby.exe" "%~dpn0" %*
