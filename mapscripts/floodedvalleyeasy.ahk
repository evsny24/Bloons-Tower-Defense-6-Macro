#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	Click, Left, 324, 1028
	sleep 200
}
sub1()
{
	Click, Left, 1329, 1020
	sleep 200
}
sub2()
{
	Click, Left, 1389, 939
	sleep 200
}
sniper()
{
	Click, Left, 296, 127
	sleep 200
}

;---------------START-------------

WinActivate, BloonsTD6
deselect()
deselect()

Click, Left, 2278, 297
ben()

send {x}
sub1()

send {x}
sub2()

startgame()

sub1()
targetsmart()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("z")
sniper()
sniper()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade2()
waitforupgrade1()
waitforupgrade2()
deselect()

sub2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()

backtomainmenu()

=::ExitApp