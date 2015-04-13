@echo off
echo Building your theme...
mkdir temp
echo Building fonts...
bin\makebundle.exe temp\8x8.fnt Template\font8x8
bin\makebundle.exe temp\7x6.fnt Template\font7x6
bin\makebundle.exe temp\4x6.fnt Template\font4x6
echo Copying colors...
copy /y Template\colors.txt temp\colors.txt
echo Copying graphics...
copy /y Template\bevel.* temp
copy /y Template\vu.* temp
copy /y Template\analyzor.* temp
copy /y Template\logo.* temp
echo Bundling everything together...
bin\makebundle.exe MyNewTheme temp
echo ---
echo Your new theme is now packed in the file called "MyNewTheme"!
echo Copy the file in klystrack\res and restart klystrack.
pause
