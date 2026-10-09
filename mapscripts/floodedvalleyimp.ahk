#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 310, 128
	sleep 200
}
sniper1()
{
	MouseClick, Left, 331, 971 
	sleep 200
}
merm1()
{
	MouseClick, Left, 1333, 1030
	sleep 200
}
boat1()
{
	MouseClick, Left, 1402, 950
	sleep 200
}
ice1()
{
	MouseClick, Left, 1515, 1020
	sleep 200
}
village1()
{
	MouseClick, Left, 1642, 1019
	sleep 200
}
village2()
{
	MouseClick, Left, 1509, 874
	sleep 200
}
ice2()
{
	MouseClick, Left, 1431, 1052
	sleep 200
}
alchemist1()
{
	MouseClick, Left, 1624, 914
	sleep 200
}
boat2()
{
	MouseClick, Left, 1501, 756
	sleep 200
}
boat3()
{
	MouseClick, Left, 1617, 801
	sleep 200
}
boat4()
{
	MouseClick, Left, 1625, 697
	sleep 200
}
boat5()
{
	MouseClick, Left, 1374, 1128
	sleep 200
}
boat6()
{
	MouseClick, Left, 1492, 1148
	sleep 200
}
boat7()
{
	MouseClick, Left, 1609, 1135
	sleep 200
}
glue1()
{
	MouseClick, Left, 1558, 1214
	sleep 200
}
merm2()
{
	MouseClick, Left, 2128, 680
	sleep 200
}
merm3()
{
	MouseClick, Left, 2011, 674
	sleep 200
}
merm4()
{
	MouseClick, Left, 1990, 781
	sleep 200
}
merm5()
{
	MouseClick, Left, 2111, 792
	sleep 200
}
merm6()
{
	MouseClick, Left, 2114, 565
	sleep 200
}
merm7()
{
	MouseClick, Left, 1990, 551
	sleep 200
}
merm8()
{
	MouseClick, Left, 2055, 451
	sleep 200
}
ice3()
{
	MouseClick, Left, 1477, 671
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()
sleep 1000

MouseClick, Left, 2278, 292
ben()

Send {z}
sniper1()
sniper1()
targetsmart()
deselect()

Send {c}
boat1()
boat1()
upgradet1()
upgradet1()
upgradet2()
deselect()

Send {o}
merm1()
merm1()
upgradet1()
upgradet1()
upgradet3()
deselect()

startgame()

merm1()
waitforupgrade1()
deselect()

sniper1()
waitforupgrade1()
deselect()

boat1()
waitforupgrade2()
waitforupgrade1()
deselect()

merm1()
waitforupgrade1()
deselect()

canaffordtower("t")
ice1()
ice1()
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

canaffordtower("k")
village2()
village2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()
deselect()

village1()
waitforupgrade1()
waitforupgrade1()
deselect()

canaffordtower("t")
ice2()
ice2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

village1()
waitforupgrade3()
deselect()

ice1()
waitforupgrade3()
deselect()

canaffordtower("f")
alchemist1()
alchemist1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
deselect()

merm1()
waitforupgrade1()
deselect()

alchemist1()
waitforupgrade1()
deselect()

canaffordtower("c")
boat2()
boat2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
deselect()

canaffordtower("c")
boat3()
boat3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
deselect()

canaffordtower("c")
boat4()
boat4()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
deselect()

canaffordtower("c")
boat5()
boat5()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
deselect()

canaffordtower("c")
boat6()
boat6()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
deselect()

canaffordtower("c")
boat7()
boat7()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
deselect()

merm1()
waitforupgrade3()
deselect()

canaffordtower("o")
merm2()
merm2()
waitforupgrade3()
deselect()

canaffordtower("o")
merm3()
merm3()
waitforupgrade3()
deselect()

canaffordtower("o")
merm4()
merm4()
waitforupgrade3()
deselect()

canaffordtower("o")
merm5()
merm5()
waitforupgrade3()
deselect()

canaffordtower("o")
merm6()
merm6()
waitforupgrade3()
deselect()

canaffordtower("o")
merm7()
merm7()
waitforupgrade3()
deselect()

canaffordtower("o")
merm8()
merm8()
waitforupgrade3()
deselect()

canaffordtower("y")
glue1()
glue1()
targetsmart()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

ice2()
waitforupgrade3()
deselect()

canaffordtower("t")
ice3()
ice3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
deselect()

ice1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
deselect()

boat1()
waitforupgrade1()
deselect()
boat2()
waitforupgrade1()
deselect()
boat3()
waitforupgrade1()
deselect()
boat4()
waitforupgrade1()
deselect()
boat5()
waitforupgrade1()
deselect()
boat6()
waitforupgrade1()
deselect()
boat7()
waitforupgrade1()
deselect()

backtomainmenu()

=::ExitApp