#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

sniper()
{
	Click, Left, 2140, 760
	sleep 200
}
dart()
{
	Click, Left, 1303, 796
	sleep 200
}
druid()
{
	Click, Left, 1007, 563
	sleep 200
}
ben()
{
	Click, Left, 1766, 1019
	sleep 200
}
village()
{
	Click, Left, 2078, 664
	sleep 200
}


;-------------START-------------

WinActivate, BloonsTD6
deselect()
deselect()

send {z}
sniper()
sniper()
upgradet3()
upgradet3()
upgradet1()
deselect()

send {q}
dart()

send {g}
druid()
druid()
upgradet2()

startgame()

waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

waituntil("trickytracksr19.png")

Click, 2282, 300
ben()

sniper()
waitforupgrade3()
waitforupgrade1()
waitforupgrade3()
deselect()

canaffordtower("k")
village()
village()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
deselect()

backtomainmenu()

=::ExitApp