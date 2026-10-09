#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 1749, 911
	sleep 200
}
sniper1()
{
	MouseClick, Left, 1161, 790
	sleep 200
}
sniper2()
{
	MouseClick, Left, 983, 1062
	sleep 200
}
village1()
{
	MouseClick, Left, 1117, 1034
	sleep 200
}
village2()
{
	MouseClick, Left, 1250, 1129
	sleep 200
}
sub1()
{
	MouseClick, Left, 1024, 783
	sleep 200
}
sub2()
{
	MouseClick, Left, 1083, 893
	sleep 200
}
dart1()
{
	MouseClick, Left, 548, 240
	sleep 200
}
dart2()
{
	MouseClick, Left, 1469, 235
	sleep 200
}
druid()
{
	MouseClick, Left, 1312, 927
	sleep 200
}
sfactory()
{
	MouseClick, Left, 1397, 995
	sleep 200
}
ace()
{
	MouseClick, Left, 1095, 1235
	sleep 200
}
alchemist()
{
	MouseClick, Left, 770, 1191
	sleep 200
}
farm()
{
	MouseClick, Left, 1175, 1209
	sleep 200
}
hover()
{
	MouseMove, 1121, 1018
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()
sleep 1000

Click, Left, 2280, 300
ben()

send {x}
sub1()
sub1()
upgradet1()
upgradet1()
upgradet3()
upgradet3()
upgradet3()
deselect()

send {q}
dart1()

send {q}
dart2()

send {z}
sniper1()
sniper1()
targetsmart()
upgradet1()
upgradet2()

startgame()

waitforupgrade2()
deselect()

dart1()
waitforupgrade3()
waitforupgrade3()
deselect()

dart2()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("g")
druid()
druid()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

canaffordtower("k")
village1()
village1()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("z")
sniper2()
sniper2()
waitforupgrade3()
waitforupgrade2()
waitforupgrade3()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()
deselect()

village1()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
deselect()

canaffordtower("f")
alchemist()
alchemist()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

druid()
waitforupgrade2()
deselect()

canaffordtower("h")
farm()

village1()
waitforupgrade3()
waitforupgrade3()
hover()

canaffordtower("x")
sub2()
sub2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
hover()

sniper2()
hover()
waitforupgrade3()

druid()
hover()
waitforupgrade2()

canaffordtower("v")
ace()
ace()
hover()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()

canaffordtower("k")
village2()
village2()
hover()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()

canaffordtower("j")
sfactory()
sfactory()
hover()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

backtomainmenu()

=::ExitApp