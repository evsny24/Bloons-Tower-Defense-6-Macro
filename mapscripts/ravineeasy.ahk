#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	Click, Left, 1559, 179
	sleep 200
}
druid1()
{
	Click, Left, 936, 144
	sleep 200
}
druid2()
{
	Click, Left, 1134, 1305
	sleep 200
}
dart()
{
	Click, Left, 257, 655
	sleep 200
}
sfactory()
{
	Click, Left, 991, 1082
	sleep 200
}
ace()
{
	Click, Left, 1635, 541
	sleep 200
}

;--------------START-------------

WinActivate, BloonsTD6
deselect()
deselect()

Click, Left, 2279, 302
ben()

send {q}
dart()

send {g}
druid1()

send {g}
druid2()

startgame()

druid2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

druid1()
send {Tab}
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

canaffordtower("j")
sfactory()
sfactory()
waitforupgrade3()
waitforupgrade3()
targetsmart()
waitforupgrade2()

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
