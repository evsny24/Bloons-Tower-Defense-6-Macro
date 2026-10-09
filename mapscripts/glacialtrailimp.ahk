#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben()
{
	MouseClick, Left, 360, 187
	sleep 200
}
dart()
{
	MouseClick, Left, 423, 711
	sleep 200
}
sfactory1()
{
	MouseClick, Left, 1899, 911
	sleep 200
}
sfactory2()
{
	MouseClick, Left, 1540, 770
	sleep 200
}
wizard()
{
	MouseClick, Left, 1548, 771
	sleep 200
}
ice1()
{
	MouseClick, Left, 257, 537
	sleep 200
}
ice2()
{
	MouseClick, Left, 425, 720
	sleep 200
}
glue()
{
	MouseClick, Left, 328, 728
	sleep 200
}
alchemist()
{
	MouseClick, Left, 1917, 999
	sleep 200
}



;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()
sleep 1000

buycashdrop()				;comment this line if you dont need to buy any

MouseClick, Left, 2278, 292
ben()

Send {q}
dart()

Send {j}
sfactory1()
sfactory1()
upgradet1()
upgradet1()
upgradet3()
upgradet3()
upgradet3()
targetsmart()
deselect()

startgame()

usecashdrop()

send {a}
wizard()
wizard()
waitforupgrade2()
waitforupgrade2()
deselect()

waituntil("r33glacial.png")

wizard()
send {backspace}
send {a}
wizard()
wizard()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

sfactory1()
waitforupgrade3()
deselect()

wizard()
waitforupgrade2()
deselect()

waituntil("r38glacial.png")

canaffordtower("f")
alchemist()
alchemist()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("t")
ice1()
ice1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()

waituntil("r60glacial.png")

sfactory1()
waitforupgrade3()
deselect()

alchemist()
waitforupgrade1()
deselect()

ice1()
waitforupgrade3()
deselect()

waituntil("r77glacial.png")

dart()
send {backspace}

send {t}
ice2()

send {y}
glue()
glue()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
deselect()

ice2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
deselect()

waituntil("r94glacial.png")

wizard()
send {backspace}

send {j}
sfactory2()
sfactory2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
deselect()

backtomainmenu()

=::ExitApp