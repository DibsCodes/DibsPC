@echo off
setlocal

:: Get clipboard content using PowerShell
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "Get-Clipboard"`) do (
    set "CLIP_URL=%%i"
)

:: Validate that clipboard is not empty
if "%CLIP_URL%"=="" (
    echo Clipboard is empty!
    pause
    exit /b
)

:: Launch Windows Terminal in the target directory and run yt-dlp
wt.exe -d "C:\Users\dibs\School Media" cmd.exe /k "yt-dlp --cookies-from-browser firefox --sleep-requests 1.5 -f "bv*+ba/b" --merge-output-format mp4 "%CLIP_URL%""