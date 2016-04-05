REM Download ahmine and CanaryMod to set up coderdojobelfast Java room environment.

@echo off
setlocal

REM remove old folders
IF EXIST "%USERPROFILE%\Desktop\server" RD /S /Q "%USERPROFILE%\Desktop\server"
IF EXIST "%USERPROFILE%\Desktop\code" RD /S /Q "%USERPROFILE%\Desktop\code"

REM get busybox
IF NOT EXIST "%USERPROFILE%\Downloads\busybox.exe" (
  bitsadmin.exe /Transfer "Download busybox.exe" /Download http://frippery.org/files/busybox/busybox.exe "%USERPROFILE%\Downloads\busybox.exe"
)
IF NOT EXIST "%USERPROFILE%\Desktop\sh.exe" (
  COPY /b "%USERPROFILE%\Downloads\busybox.exe" "%USERPROFILE%\Desktop\sh.exe"
)

REM get convenience wrapper for sh.exe
IF NOT EXIST "%USERPROFILE%\Downloads\shell.bat" (
  bitsadmin.exe /Transfer "Download shell.bat" /Download https://raw.githubusercontent.com/coderdojobelfast/java/master/shell.bat %USERPROFILE%\Downloads\shell.bat
)
Copy /y /a "%USERPROFILE%\Downloads\shell.bat" "%USERPROFILE%\Desktop\shell.bat"


REM get ahmine, from "Learn to Program with Minecraft Plugins", 2nd Edition, Andy Hunt, (c)2014 The Pragmatic Programmers.
IF NOT EXIST %USERPROFILE%\Downloads\ahmine2-code.zip (
  bitsadmin.exe /Transfer "Download ahmine" /Download http://media.pragprog.com/titles/ahmine2/code/ahmine2-code.zip %USERPROFILE%\Downloads\ahmine2-code.zip
)

REM get CanaryMod
IF NOT EXIST %USERPROFILE%\Downloads\CanaryMod.jar (
  bitsadmin.exe /Transfer "Download CanaryMod" /Download https://canarymod.net/releases/CanaryMod-1.2.0_0.jar %USERPROFILE%\Downloads\CanaryMod.jar
)


REM unpack ahmine
cd /d %~dp0
Call :UnZipFile "%USERPROFILE%\Downloads" "%USERPROFILE%\Downloads\ahmine2-code.zip"
Move /y "%USERPROFILE%\Downloads\code" "%USERPROFILE%\Desktop"

REM copy starter and jar file to server
md %USERPROFILE%\Desktop\server
Copy /y "%USERPROFILE%\Desktop\code\runtime\start_minecraft.bat" "%USERPROFILE%\Desktop\server"
Copy /y "%USERPROFILE%\Downloads\CanaryMod.jar" "%USERPROFILE%\Desktop\server"

REM Run canarymod first time
echo Running Canarymod
cd "%USERPROFILE%\Desktop\server"
Call .\"start_minecraft.bat"

REM accept the EULA
powershell -ExecutionPolicy Bypass -Command "(gc %USERPROFILE%\Desktop\server\eula.txt) -replace 'false', 'true' | Set-Content %USERPROFILE%\Desktop\server\eula.txt"

echo Done

endlocal
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo Call objShell.NameSpace(%1).CopyHere(FilesInZip, 20)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
