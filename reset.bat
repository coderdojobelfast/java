setlocal

REM set location of zip
set ziproot=h:\
REM set ziproot=%USERPROFILE%\Downloads

REM remove previous installation
IF EXIST "%USERPROFILE%\Desktop\server" RD /S /Q "%USERPROFILE%\Desktop\server"
IF EXIST "%USERPROFILE%\Desktop\code" RD /S /Q "%USERPROFILE%\Desktop\code"
IF EXIST "%USERPROFILE%\Desktop\sh.exe" DEL "%USERPROFILE%\Desktop\sh.exe"
IF EXIST "%USERPROFILE%\Desktop\shell.bat" DEL "%USERPROFILE%\Desktop\shell.bat"

REM unpack zip to desktop
Call :UnZipFile "%USERPROFILE%\Desktop" "%ziproot%\coderdojo-java.zip"

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
