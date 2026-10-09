#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 768, 335
	sleep 200
}
dart1()
{
	MouseClick, Left, 326, 1209
	sleep 200
}
dart2()
{
	MouseClick, Left, 2080, 1135
	sleep 200
}
druid1()
{
	MouseClick, Left, 1028, 1332
	sleep 200
}
druid2()
{
	MouseClick, Left, 1030, 1241
	sleep 200
}
ace()
{
	MouseClick, Left, 1348, 762
	sleep 200
}

;-----------------------START--------------------

WinActivate, BloonsTD6
deselect()
deselect()

Click, 2280, 302
ben()

send {q}
dart1()

send {q}
dart2()

startgame()

send {g}
druid1()
druid1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

dart1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()

dart2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("g")
druid2()
druid2()
targetsmart()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()

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



waitforupgrade3()
waitforupgrade3()








