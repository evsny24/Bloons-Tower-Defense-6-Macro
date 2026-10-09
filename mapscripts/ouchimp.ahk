#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 730, 1014
	sleep 200
}
dart()
{
	MouseClick, Left, 738, 425
	sleep 200
}
sniper1()
{
	MouseClick, Left, 1514, 431
	sleep 200
}
sniper2()
{
	MouseClick, Left, 1509, 1011
	sleep 200
}
village1()
{
	MouseClick, Left, 1726, 1152
	sleep 200
}
village2()
{
	MouseClick, Left, 1931, 1255
	sleep 200
}
sub()
{
	MouseClick, Left, 1295, 816
	sleep 200
}
boat()
{
	MouseClick, Left, 967, 628
	sleep 200
}
druid()
{
	MouseClick, Left, 1888, 1015
	sleep 200
}
sfactory()
{
	MouseClick, Left, 1936, 1109
	sleep 200
}
ace()
{
	MouseClick, Left, 1723, 1281
	sleep 200
}
alchemist()
{
	MouseClick, Left, 1510, 1237
	sleep 200
}
farm()
{
	MouseClick, Left, 1931, 1160
	sleep 200
}
hover()
{
	MouseMove, 1723, 1122
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()
sleep 1000

Click, Left, 2280, 300
ben()

send {q}
dart()

send {x}
sub()
sub()
upgradet1()
upgradet1()
upgradet3()
upgradet3()
upgradet3()
deselect()

send {z}
sniper1()
sniper1()
targetsmart()
upgradet1()
deselect()

startgame()

canaffordtower("c")
boat()
boat()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("k")
village1()
village1()
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

canaffordtower("f")
alchemist()
alchemist()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

village1()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
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

sniper2()
hover()
waitforupgrade3()

alchemist()
waitforupgrade1()
hover()

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
hover()

backtomainmenu()

=::ExitApp