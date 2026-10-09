#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

dart()
{
	MouseClick, Left, 741, 426
	sleep 200
}
ben()
{
	MouseClick, Left, 1120, 296
	sleep 200
}
boat()
{
	MouseClick, Left, 1125, 742
	sleep 200
}
ace()
{
	MouseClick, Left, 1127, 1240
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()

Click, Left, 2287, 300
ben()

send {q}
dart()

send {c}
boat()
boat()
upgradet2()
upgradet1()

startgame()

waitforupgrade1()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
deselect()

canaffordtower("v")
ace()
ace()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

backtomainmenu()

=::ExitApp

