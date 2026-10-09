#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	Click, Left, 1112, 434
	sleep 200
}
dart()
{
	Click, Left, 1113, 923
	sleep 200
}
druid()
{
	Click, Left, 1115, 1028
	sleep 200
}
sniper()
{
	Click, Left, 145, 766
	sleep 200
}

;---------------START-------------

WinActivate, BloonsTD6
deselect()
deselect()

MouseClick, Left, 2283, 297
ben()

send {q}
dart()
dart()
upgradet3()
upgradet3()
upgradet3()
upgradet2()

startgame()

waitforupgrade2()
deselect()

canaffordtower("g")
druid()
druid()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

canaffordtower("z")
sniper()
sniper()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
deselect()

backtomainmenu()

=::ExitApp