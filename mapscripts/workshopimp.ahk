#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 1621, 1013
	sleep 200
}
sniper()
{
	MouseClick, Left, 1343, 664
	sleep 200
}
village1()
{
	MouseClick, Left, 1338, 520
	sleep 200
}
village2()
{
	MouseClick, Left, 1639, 338
	sleep 200
}
dart1()
{
	MouseClick, Left, 194, 829
	sleep 200
}
ice()
{
	MouseClick, Left, 1013, 667
	sleep 200
}
druid()
{
	MouseClick, Left, 1238, 660
	sleep 200
}
sfactory1()
{
	MouseClick, Left, 2128, 840
	sleep 200
}
sfactory2()
{
	MouseClick, Left, 1636, 218
	sleep 200
}
ace()
{
	MouseClick, Left, 1642, 464
	sleep 200
}
alchemist()
{
	MouseClick, Left, 1616, 560
	sleep 200
}
farm()
{
	MouseClick, Left, 1629, 426
	sleep 200
}
hover()
{
	MouseMove, 1478, 483
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

send {q}
dart1()

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
waitforupgrade2()
waitforupgrade2()
deselect()

startgame()

usecashdrop()

canaffordtower("j")
sfactory1()
sfactory1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
deselect()

sniper()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("k")
village1()
village1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
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

druid()
waitforupgrade2()
deselect()

canaffordtower("h")
farm()

village1()
hover()
waitforupgrade3()
waitforupgrade3()

canaffordtower("t")
ice()
ice()
hover()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()
hover()

sniper()
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

canaffordtower("k")
village2()
village2()
hover()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()

canaffordtower("j")
sfactory2()
sfactory2()
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