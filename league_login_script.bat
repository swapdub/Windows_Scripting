@if (@CodeSection == @Batch) @then
@echo off

@REM Author: swapdub
@REM Source: https://stackoverflow.com/questions/17038282/press-keyboard-keys-using-a-batch-file

@REM Other Instructions:
@REM - Create shortcut for your file
@REM - Paste shortcut in:
@REM     C:\Users\*YourUserName*\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
@REM Now it would be available in Windows Start Menu and you can Pin to Start Menu

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"

@REM start "" /B "C:\Users\swapn\AppData\Local\Programs\Blitz\Blitz.exe"
start "" /B "C:\Your\Path\to\Riot Games\Riot Client\RiotClientServices.exe" --launch-product=league_of_legends --launch-patchline=live
echo League of Legends is loading. PLEASE WAIT...
timeout /t 8 /nobreak


%SendKeys% "username"
@REM timeout /t 1 /nobreak
%SendKeys% "{TAB}"
@REM timeout /t 1 /nobreak
%SendKeys% "password"
@REM timeout /t 1 /nobreak
%SendKeys% "{ENTER}"

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
