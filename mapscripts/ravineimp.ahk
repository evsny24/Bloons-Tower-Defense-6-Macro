#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 1305, 163
	sleep 200
}
wizard()
{
	MouseClick, Left, 1796, 366
	sleep 200
}
sniper1()
{
	MouseClick, Left, 1370, 269
	sleep 200
}
sniper2()
{
	MouseClick, Left, 906, 1092
	sleep 200
}
village1()
{
	MouseClick, Left, 751, 1085
	sleep 200
}
village2()
{
	MouseClick, Left, 521, 1206
	sleep 200
}
dart1()
{
	MouseClick, Left, 381, 885
	sleep 200
}
dart2()
{
	MouseClick, Left, 352, 956
	sleep 200
}
dart3()
{
	MouseClick, Left, 1151, 1298
	sleep 200
}
dart4()
{
	MouseClick, Left, 1430, 1368
	sleep 200
}
druid()
{
	MouseClick, Left, 1001, 1097
	sleep 200
}
sfactory()
{
	MouseClick, Left, 381, 1192
	sleep 200
}
ace()
{
	MouseClick, Left, 568, 1072
	sleep 200
}
alchemist()
{
	MouseClick, Left, 643, 1204
	sleep 200
}
farm()
{
	MouseClick, Left, 537, 1049
	sleep 200
}
hover()
{
	MouseMove, 751, 1069
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
dart2()

send {q}
dart3()

send {q}
dart4()

send {q}
dart1()
dart1()
upgradet2()
upgradet2()
upgradet2()
deselect()

send {z}
sniper1()
sniper1()
targetsmart()
upgradet1()
deselect()

canaffordtower("g")
druid()
druid()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

startgame()

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

canaffordtower("k")
village1()
village1()
waitforupgrade3()
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

village1()
waitforupgrade3()
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

canaffordtower("a")
wizard()
wizard()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()
hover()
 
sniper2()
hover()
waitforupgrade3()

alchemist()
hover()
waitforupgrade1()

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