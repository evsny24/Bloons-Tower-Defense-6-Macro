;NOTICE: THIS SCRIPT IS FOR DEVELOPMENT PURPOSES, IT DOESN'T DO ANYTHING IN THE MAIN LOOP

DetectHiddenWindows, On
SetTitleMatchMode, 2
#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\

WinActivate, BloonsTD6
run .\mainscripts\gui.ahk

run .\mapscripts\workshopeasy.ahk

sleep 5000

			SplitPath, A_ScriptDir, , parentDir			;get the parent directory of this script
			targetDir := parentDir . "\mapscripts\"			;build path to mapscripts
			WinGet, idList, List, ahk_exe AutoHotkey.exe		;get a list of all running AutoHotkey windows
			Loop, %idList%						;loop through each one
				{
   				id := idList%A_Index%
   			 	WinGetTitle, winTitle, ahk_id %id%
   			 	if (InStr(winTitle, targetDir) == 1 && InStr(winTitle, ".ahk"))
     					WinKill, ahk_id %id%			;if start with targetDir and is ahk, close it
				}

=::ExitApp