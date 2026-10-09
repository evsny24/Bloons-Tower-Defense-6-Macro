#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 500, 1098
	sleep 200
}
sniper1()
{
	MouseClick, Left, 362, 255
	sleep 200
}
sniper2()
{
	MouseClick, Left, 1341, 201
	sleep 200
}
village1()
{
	MouseClick, Left, 1319, 305
	sleep 200
}
village2()
{
	MouseClick, Left, 1501, 567
	sleep 200
}
sub1()
{
	MouseClick, Left, 1583, 261
	sleep 200
}
sub2()
{
	MouseClick, Left, 883, 858
	sleep 200
}
sub3()
{
	MouseClick, Left, 661, 912
	sleep 200
}
dart1()
{
	MouseClick, Left, 818, 228
	sleep 200
}
dart2()
{
	MouseClick, Left, 1741, 1256
	sleep 200
}
druid()
{
	MouseClick, Left, 1577, 355
	sleep 200
}
sfactory()
{
	MouseClick, Left, 1354, 554
	sleep 200
}
ace()
{
	MouseClick, Left, 1335, 430
	sleep 200
}
alchemist()
{
	MouseClick, Left, 1163, 96
	sleep 200
}
farm()
{
	MouseClick, Left, 1357, 469
	sleep 200
}
hover()
{
	MouseMove, 1317, 287
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()
sleep 1000

buycashdrop()

Click, Left, 2280, 300
ben()

send {x}
sub1()
sub1()
upgradet1()
upgradet1()
upgradet3()
deselect()

send {q}
dart1()

send {z}
sniper1()

Send {x}
sub2()

Send {x}
sub3()
sub3()
upgradet1()
upgradet1()
upgradet3()
deselect()

startgame()

usecashdrop()

sniper1()
targetsmart()
waitforupgrade1()
deselect()

sub1()
waitforupgrade3()
waitforupgrade3()
deselect()

sniper1()
waitforupgrade2()
waitforupgrade2()
deselect()

dart1()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("q")
dart2()
dart2()
waitforupgrade3()
waitforupgrade3()
deselect()

sub3()
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

sub3()
waitforupgrade3()
deselect()

canaffordtower("k")
village1()
village1()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("h")
farm()

canaffordtower("z")
sniper2()
sniper2()
hover()
waitforupgrade3()
waitforupgrade2()
waitforupgrade3()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()

village1()
hover()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()

canaffordtower("f")
alchemist()
alchemist()
hover()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

druid()
hover()
waitforupgrade2()

village1()
hover()
waitforupgrade3()
waitforupgrade3()

sub2()
hover()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()
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
hover()

backtomainmenu()

=::ExitApp