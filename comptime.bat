@ECHO OFF
set REV=Unknown
copy nul: /b +%1\comptime.c tmp.$$$ > nul
move tmp.$$$ %1\comptime.c > nul
SET REV=illegal
FOR /F "usebackq" %%s IN (`git -C=%1\.. describe --always`) DO @SET REV=%%s
ECHO // Do not edit!  This file was autogenerated > %1\comptime.h
ECHO // by the %0 batch file >> %1\comptime.h
ECHO // >> %1\comptime.h
ECHO const char* comprevision = "r%REV%"; >> %1\comptime.h
