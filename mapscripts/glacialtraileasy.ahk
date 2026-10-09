#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

dart()
{
	MouseClick, Left, 422, 711
	sleep 200
}
ben()
{
	MouseClick, Left, 334, 1211
	sleep 200
}
druid()
{
	MouseClick, Left, 1545, 774
	sleep 200
}
sfactory()
{
	MouseClick, Left, 1851, 890
	sleep 200
}
ace()
{
	MouseClick, Left, 178, 1361
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()

send {q}
dart()
dart()
upgradet3()
upgradet3()
upgradet3()
upgradet2()
upgradet2()
deselect()

startgame()

waituntil("r12glacial.png")

MouseClick, left, 2277, 295
ben()

canaffordtower("g")
druid()

canaffordtower("j")
sfactory()
sfactory()
waitforupgrade3()
waitforupgrade3()
targetsmart()

druid()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
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
