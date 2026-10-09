#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

dart()
{
	MouseClick, Left, 1360, 670
	sleep 200
}
ben()
{
	MouseClick, Left, 1195, 607
	sleep 200
}
druid()
{
	MouseClick, Left, 1330, 577
	sleep 200
}
sfactory()
{
	MouseClick, Left, 2118, 870
	sleep 200
}
ace()
{
	MouseClick, Left, 486, 149
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()

Click, Left, 2279, 300
ben()

send {q}
dart()

send {g}
druid()

startgame()

druid()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

dart()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("j")
sfactory()
sfactory()
waitforupgrade3()
waitforupgrade3()
targetsmart()
waitforupgrade1()
deselect()

canaffordtower("v")
ace()
ace()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
deselect()

backtomainmenu()

=::ExitApp