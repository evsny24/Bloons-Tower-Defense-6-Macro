#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 775, 336
	sleep 200
}
village1()
{
	MouseClick, Left, 1214, 721
	sleep 200
}
village2()
{
	MouseClick, Left, 1214, 858
	sleep 200
}
dart1()
{
	MouseClick, Left, 1064, 1315
	sleep 200
}
dart2()
{
	MouseClick, Left, 1059, 1239
	sleep 200
}
dart3()
{
	MouseClick, Left, 255, 1066
	sleep 200
}
dart4()
{
	MouseClick, Left, 2076, 576
	sleep 200
}
druid1()
{
	MouseClick, Left, 346, 1223
	sleep 200
}
druid2()
{
	MouseClick, Left, 989, 691
	sleep 200
}
sfactory1()
{
	MouseClick, Left, 2076, 292
	sleep 200
}
sfactory2()
{
	MouseClick, Left, 247, 227
	sleep 200
}
sfactory3()
{
	MouseClick, Left, 1024, 867
	sleep 200
}
ace1()
{
	MouseClick, Left, 1415, 629
	sleep 200
}
ace2()
{
	MouseClick, Left, 1407, 882
	sleep 200
}
alchemist1()
{
	MouseClick, Left, 1476, 728
	sleep 200
}
alchemist2()
{
	MouseClick, Left, 1322, 770
	sleep 200
}
farm()
{
	MouseClick, Left, 1014, 861
	sleep 200
}
hover()
{
	MouseMove, 1163, 826
	sleep 200
}
ice()
{
	MouseClick, Left, 1267, 406
	sleep 200
}
heli()
{
	MouseClick, Left, 813, 650
	sleep 200
}

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()
sleep 1000

buycashdrop()				;comment this line if you don't need to buy cash drops

Click, Left, 2280, 300
ben()

send {q}
dart4()

send {q}
dart2()

send {q}
dart3()

send {q}
dart1()
dart1()
upgradet2()
upgradet2()
upgradet2()
upgradet3()
upgradet3()
deselect()

send {g}
druid1()
druid1()
upgradet2()
upgradet2()
upgradet2()
upgradet1()
deselect()

startgame()

usecashdrop()

canaffordtower("h")
farm()
deselect()
hover()

canaffordtower("j")
sfactory1()
hover()

canaffordtower("j")
sfactory2()
sfactory2()
hover()
waitforupgrade3()
waitforupgrade3()
Send {Tab}
deselect()
hover()

canaffordtower("g")
druid2()
druid2()
hover()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
targetsmart()
deselect()
hover()

canaffordtower("v")
ace1()
ace1()
hover()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
deselect()
hover()

canaffordtower("k")
village1()
deselect()
hover()

village1()
hover()
waitforupgrade2()
waitforupgrade2()
deselect()
hover()

canaffordtower("f")
alchemist1()
alchemist1()
hover()
waitforupgrade1()
waitforupgrade1()
deselect()
hover()

village1()
hover()
waitforupgrade3()
waitforupgrade3()
deselect()
hover()

canaffordtower("k")
village2()
village2()
hover()
waitforupgrade3()
waitforupgrade3()
deselect()
hover()

alchemist1()
hover()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()
hover()

village2()
hover()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()

canaffordtower("v")
ace2()
ace2()
hover()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
deselect()
hover()

village2()
hover()
waitforupgrade3()
waitforupgrade3()

canaffordtower("f")
alchemist2()
alchemist2()
hover()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()

ace1()
hover()
waitforupgrade3()

druid2()
hover()
waitforupgrade2()
waitforupgrade2()

ace1()
hover()
waitforupgrade3()

village1()
hover()
waitforupgrade2()

canaffordtower("j")
sfactory3()
sfactory3()
hover()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
deselect()
hover()

canaffordtower("t")
ice()
ice()
hover()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()
hover()

canaffordtower("b")
heli()
heli()
hover()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
deselect()
hover()

backtomainmenu()

=::ExitApp