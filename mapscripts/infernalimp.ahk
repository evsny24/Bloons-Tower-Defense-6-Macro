#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 1561, 1083
	sleep 200
}
sniper1()
{
	MouseClick, Left, 1118, 922
	sleep 200
}
sniper2()
{
	MouseClick, Left, 190, 785
	sleep 200
}
village1()
{
	MouseClick, Left, 122, 897
	sleep 200
}
village2()
{
	MouseClick, Left, 2109, 647
	sleep 200
}
sub1()
{
	MouseClick, Left, 639, 1047
	sleep 200
}
sub2()
{
	MouseClick, Left, 1536, 319
	sleep 200
}
dart1()
{
	MouseClick, Left, 653, 369
	sleep 200
}
druid()
{
	MouseClick, Left, 95, 613
	sleep 200
}
sfactory()
{
	MouseClick, Left, 1111, 507
	sleep 200
}
ace()
{
	MouseClick, Left, 2085, 788
	sleep 200
}
alchemist()
{
	MouseClick, Left, 82, 773
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

canaffordtower("x")
sub2()
sub2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

sniper2()
waitforupgrade3()
deselect()

druid()
waitforupgrade2()
deselect()

canaffordtower("v")
ace()
ace()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("k")
village2()
village2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("j")
sfactory()
sfactory()
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