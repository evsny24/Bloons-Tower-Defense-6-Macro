#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

sub()
{
	MouseClick, Left, 1592, 253
	sleep 200
}
ben()
{
	MouseClick, Left, 1112, 548
	sleep 200
}
druid()
{
	MouseClick, Left, 858, 493
	sleep 200
}
dart()
{
	MouseClick, Left, 438, 231
	sleep 200
}
ace()
{
	MouseClick, Left, 1394, 576
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()

Click, Left, 2279, 298
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