@echo off
cls
@echo off
wadpacker.exe *.tik *.tmd *.cert out.wad -sign

cls

echo ----------------------------------------
echo Congratulations! Packaged correctly!
echo ----------------------------------------
pause
exit