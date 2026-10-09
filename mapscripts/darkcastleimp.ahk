#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 1368, 255
	sleep 200
}
dart()
{
	MouseClick, Left, 765, 651
	sleep 200
}
sniper1()
{
	MouseClick, Left, 1275, 238
	sleep 200
}
sniper2()
{
	MouseClick, Left, 1351, 599
	sleep 200
}
village1()
{
	MouseClick, Left, 1324, 467
	sleep 200
}
sub1()
{
	MouseClick, Left, 1444, 579
	sleep 200
}
sub2()
{
	MouseClick, Left, 1442, 921
	sleep 200
}
boat()
{
	MouseClick, Left, 1460, 486
	sleep 200
}
druid()
{
	MouseClick, Left, 1040, 595
	sleep 200
}
sfactory()
{
	MouseClick, Left, 1174, 364
	sleep 200
}
ace()
{
	MouseClick, Left, 1140, 470
	sleep 200
}
alchemist()
{
	MouseClick, Left, 1247, 598
	sleep 200
}
farm()
{
	MouseClick, Left, 1135, 400
	sleep 200
}
hover()
{
	MouseMove, 1319, 431
	sleep 200
}
altbreak()
{
	MouseClick, Left, 1973, 1405
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
altbreak()
altbreak()
sleep 1000

send {x}
sub1()

send {x}
sub2()

send {q}
dart()

Click, Left, 2280, 300
ben()

sub1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
altbreak()

canaffordtower("z")
sniper1()
sniper1()
targetsmart()
waitforupgrade1()
waitforupgrade2()

startgame()

waitforupgrade2()
altbreak()

canaffordtower("c")
boat()
boat()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
altbreak()

canaffordtower("k")
village1()
village1()
waitforupgrade3()
waitforupgrade3()
altbreak()

canaffordtower("z")
sniper2()
sniper2()
waitforupgrade3()
waitforupgrade2()
waitforupgrade3()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()
altbreak()

village1()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
altbreak()

canaffordtower("f")
alchemist()
alchemist()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
altbreak()

canaffordtower("g")
druid()
druid()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade2()
altbreak()

canaffordtower("h")
farm()

village1()
waitforupgrade3()
waitforupgrade3()
hover()

sniper2()
hover()
waitforupgrade3()
altbreak()
hover()

druid()
hover()
waitforupgrade2()
altbreak()
hover()

breaktrees()
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
altbreak()
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
altbreak()
hover()

backtomainmenu()

=::ExitApp