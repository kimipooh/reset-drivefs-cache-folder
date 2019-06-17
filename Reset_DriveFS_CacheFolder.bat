@ECHO OFF

SET GDFS=%LOCALAPPDATA%\Google
SET TEMPDFS=%LOCALAPPDATA%\Google\DriveFS2

REM 0. If the temporary backup folder (DriveFS2), please move or rename it, first.

if exist %TEMPDFS% goto USAGE


REM 1. End the Google Drive File Stream processes.

echo 
echo "Closing Google Drive FS program."
echo 

taskkill /f /im GoogleDriveFS.exe

REM Wait 2 seconds because it may take for 1 or more seconds for closing GoogleDriveFS.exe.

timeout /t 2 /nobreak > nul

echo 
echo "Ended Google Drive FS program."
echo 

REM 2. Rename DriveFS folder.


echo 
echo "Moved %LOCALAPPDATA%\Google\DriveFS to %TEMPDFS%"
echo 

ren %LOCALAPPDATA%\Google\DriveFS  DriveFS2

REM 3. Start Google Drive File Stream.
REM ref. https://gist.github.com/webgevel/4cf0a3b768f485ce359b24f1b4d498cf

FOR /F "tokens=* USEBACKQ" %%F IN (`where /R "C:\Program Files\Google\Drive File Stream" GoogleDriveFS.exe`) DO (
SET var=%%F
)

echo 
echo "Run Google Drive FS program."
echo 

start "" "%var%"

goto END

:USAGE
echo 
echo "Please move or rename the temporary backup folder %TEMPDFS%, first"
EXPLORER "%GDFS%" 

:END
pause
