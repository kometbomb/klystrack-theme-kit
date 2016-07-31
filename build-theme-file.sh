echo 'Building your theme...'
mkdir temp
echo Building fonts...
bin/makebundle temp/8x8.fnt Template/font8x8
bin/makebundle temp/7x6.fnt Template/font7x6
bin/makebundle temp/4x6.fnt Template/font4x6
echo 'Copying colors...'
cp -f Template/colors.txt temp/colors.txt
echo 'Copying graphics...'
cp -f Template/bevel.* temp
cp -f Template/vu.* temp
cp -f Template/analyzor.* temp
cp -f Template/logo.* temp
cp -f Template/cursor.* temp
echo 'Bundling everything together...'
bin/makebundle MyNewTheme temp
echo 'Cleaning up temporary files...'
rm -rf temp
echo '---'
echo 'Your new theme is now packed in the file called "MyNewTheme"!'
echo 'Copy the file in klystrack/res and restart klystrack.'
