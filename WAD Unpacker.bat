@echo off
cls
@echo off

IF EXIST *.wad goto WAD

echo There is no wad.
pause
pause
exit

:WAD
IF EXIST in.wad goto EXTRACT
echo Rename the Wad to in.wad
pause
pause
exit


:EXTRACT
wadunpacker in.wad
cls
echo -------------------------------------------
echo Congratulations! Unpacked correctly!
echo -------------------------------------------
pause
exit
