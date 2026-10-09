#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

dart1()
{
	MouseClick, Left, 613, 846
	sleep 200
}
ben()
{
	MouseClick, Left, 645, 385
	sleep 200
}
dart2()
{
	MouseClick, Left, 1256, 417
	sleep 200
}
druid1()
{
	MouseClick, Left, 1188, 358
	sleep 200
}
druid2()
{
	MouseClick, Left, 1037, 357
	sleep 200
}
ace()
{
	MouseClick, Left, 1783, 282
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()

Click, Left, 2278, 301
ben()

send {q}
dart1()

send {q}
dart2()

send {g}
druid1()

send {g}
druid2()
druid2()

startgame()

waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

dart2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

dart1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

druid1()
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
