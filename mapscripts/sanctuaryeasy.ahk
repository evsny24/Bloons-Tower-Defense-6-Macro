#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	Click, Left, 1204, 1277
	sleep 200
}
sub()
{
	Click, Left, 1179, 209
	sleep 200
}
dart1()
{
	Click, Left, 411, 514
	sleep 200
}
dart2()
{
	Click, Left, 1440, 607
	sleep 200
}
heli()
{
	Click, Left, 611, 1155
	sleep 200
}

;-------------START-------------

WinActivate, BloonsTD6
deselect()
deselect()

Click, Left, 2279, 277
ben()

send {q}
dart1()
dart1()
upgradet3()
upgradet3()
deselect()

send {q}
dart2()
dart2()
upgradet3()
upgradet3()
deselect()

send {x}
sub()
sub()

startgame()

waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("b")
heli()
heli()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

backtomainmenu()

=::ExitApp


