;NOTICE: THIS SCRIPT IS FOR DEVELOPMENT PURPOSES, IT DOESN'T DO ANYTHING IN THE MAIN LOOP

DetectHiddenWindows, On
SetTitleMatchMode, 2
#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\

WinActivate, BloonsTD6
run .\mainscripts\gui.ahk

sleep 500

backtomainmenu()

=::ExitApp