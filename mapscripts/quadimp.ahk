#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 766, 929
	sleep 200
}
sniper1()
{
	MouseClick, Left, 1487, 920
	sleep 200
}
sniper2()
{
	MouseClick, Left, 1328, 484
	sleep 200
}
village1()
{
	MouseClick, Left, 1418, 557
	sleep 200
}
village2()
{
	MouseClick, Left, 1695, 507
	sleep 200
}
sub()
{
	MouseClick, Left, 1224, 598
	sleep 200
}
boat()
{
	MouseClick, Left, 1122, 743
	sleep 200
}
druid()
{
	MouseClick, Left, 1225, 502
	sleep 200
}
sfactory()
{
	MouseClick, Left, 1438, 700
	sleep 200
}
ace()
{
	MouseClick, Left, 1552, 389
	sleep 200
}
alchemist()
{
	MouseClick, Left, 1438, 292
	sleep 200
}
farm()
{
	MouseClick, Left, 1589, 381
	sleep 200
}
hover()
{
	MouseMove, 1496, 466
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
click, 1120, 360
send {q}
click, 533, 751
send {q}
click, 1118, 1123
send {q}
click, 1710, 746

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

startgame()

targetsmart()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("c")
boat()
boat()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("z")
sniper2()

canaffordtower("k")
village1()
village1()
waitforupgrade3()
waitforupgrade3()
deselect()

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

canaffordtower("g")
druid()
druid()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade2()
deselect()

village1()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
deselect()

canaffordtower("h")
farm()

village1()
hover()
waitforupgrade3()
waitforupgrade3()
deselect()
hover()

sniper2()
hover()
waitforupgrade3()
deselect()
hover()

druid()
hover()
waitforupgrade2()
deselect()
hover()

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
deselect()
hover()

canaffordtower("k")
village2()
village2()
hover()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()
hover()

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