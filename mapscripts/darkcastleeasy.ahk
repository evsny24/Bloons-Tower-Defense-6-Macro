#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

dart()
{
	MouseClick, Left, 741, 653
	sleep 200
}
ben()
{
	MouseClick, Left, 963, 223
	sleep 200
}
wizard()
{
	MouseClick, Left, 1215, 598
	sleep 200
}
sfactory()
{
	MouseClick, Left, 2024, 730
	sleep 200
}
ace()
{
	MouseClick, Left, 1135, 1254
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()

Click, Left, 2280, 300
ben()

send {q}
dart()

send {a}
wizard()

startgame()

wizard()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()

canaffordtower("j")
sfactory()
sfactory()
waitforupgrade3()
waitforupgrade3()
targetsmart()
waitforupgrade1()

canaffordtower("v")
ace()
ace()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()

backtomainmenu()

=::ExitApp