#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

dart()
{
	MouseClick, Left, 545, 252
	sleep 200
}
ben()
{
	MouseClick, Left, 902, 597
	sleep 200
}
druid()
{
	MouseClick, Left, 1469, 233
	sleep 200
}
sub()
{
	MouseClick, Left, 1592, 630
	sleep 200
}
ace()
{
	MouseClick, Left, 501, 898
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

send {x}
sub()

startgame()

sub()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
deselect()

dart()
waitforupgrade3()
waitforupgrade3()
deselect()

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

