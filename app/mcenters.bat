@echo off
echo Welcome to MCentres Command Line Application
pause
IF "%1"=="start" move /Y ./dll/x64/Windows.ApplicationModel.Store.dll C:\Windows\System32 & move /Y ./dll/x86/Windows.ApplicationModel.Store.dll C:\Windows\SysWOW64 & goto exit
IF "%1"=="restore" DISM.exe /Online /Cleanup-image /Restorehealth & sfc /scannow & goto exit

echo:
echo No Options Stated!
echo "Options: app.bat [start | restore]"
echo start - start moving modified dll files
echo restore - restore the dll files into default
:exit
