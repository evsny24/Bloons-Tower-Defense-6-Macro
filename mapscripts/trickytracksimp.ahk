#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben() {
	MouseClick, Left, 2281, 285
	sleep 200
	MouseClick, Left, 1771, 1017
	sleep 200
}
dart1() {
	MouseClick, Left, 871, 301
	sleep 200
}
dart2() {
	MouseClick, Left, 1076, 582
	sleep 200
}
dart3() {
	MouseClick, Left, 1387, 800
	sleep 200
}
boomer1() {
	MouseClick, Left, 1149, 528
	sleep 200
}
boomer2() {
	MouseClick, Left, 1384, 686
	sleep 200
}
boomer3() {
	MouseClick, Left, 834, 738
	sleep 200
}
bomb1() {
	MouseClick, Left, 1393, 703
	sleep 200
}
bomb2() {
	MouseClick, Left, 1075, 869
	sleep 200
}
alchemist1() {
	MouseClick, Left, 997, 915
	sleep 200
}
alchemist2() {
	MouseClick, Left, 899, 587
	sleep 200
}
alchemist3() {
	MouseClick, Left, 1210, 919
	sleep 200
}
alchemist4() {
	MouseClick, Left, 1295, 1137
	sleep 200
}
ice1() {
	MouseClick, Left, 1059, 507
	sleep 200
}
ice2() {
	MouseClick, Left, 1378, 783
	sleep 200
}
glue1() {
	MouseClick, Left, 1089, 999
	sleep 200
}
glue2() {
	MouseClick, Left, 911, 692
	sleep 200
}
tack1() {
	MouseClick, Left, 982, 542
	sleep 200
}
tack2() {
	MouseClick, Left, 1308, 834
	sleep 200
}
tack3() {
	MouseClick, Left, 1383, 1083
	sleep 200
}
sniper1() {
	MouseClick, Left, 2143, 739
	sleep 200
}
village1() {
	MouseClick, Left, 1188, 815
	sleep 200
}
village2() {
	MouseClick, Left, 974, 1044
	sleep 200
}
mermonkey1() {
	MouseClick, Left, 761, 364
	sleep 200
}
mermonkey2() {
	MouseClick, Left, 661, 414
	sleep 200
}
mermonkey3() {
	MouseClick, Left, 987, 629
	sleep 200
}
mermonkey4() {
	MouseClick, Left, 1295, 836
	sleep 200
}
mermonkey5() {
	MouseClick, Left, 1292, 736
	sleep 200
}
mermonkey6() {
	MouseClick, Left, 1466, 1033
	sleep 200
}
mermonkey7() {
	MouseClick, Left, 1559, 972
	sleep 200
}

;-------------START-------------

WinActivate, BloonsTD6
deselect()
deselect()
sleep 1000

ben()
send {q}
dart1()
send {q}
dart2()
send {q}
dart3()
send {o}
mermonkey1()
send {o}
mermonkey2()
send {o}
mermonkey3()
mermonkey3()
upgradet3()
deselect()
send {o}
mermonkey4()
send {o}
mermonkey5()
send {o}
mermonkey6()
send {o}
mermonkey7()
send {w}
boomer1()
boomer1()
upgradet1()
upgradet1()
upgradet1()
upgradet3()
upgradet3()
deselect()

startgame()

canaffordtower("z")
sniper1()
sniper1()
waitforupgrade1()
targetsmart()
deselect()

mermonkey1()
waitforupgrade3()
deselect()

mermonkey4()
waitforupgrade3()
deselect()

mermonkey7()
waitforupgrade3()
deselect()

boomer1()
waitforupgrade1()
deselect()

mermonkey2()
waitforupgrade3()
deselect()

mermonkey5()
waitforupgrade3()
deselect()

mermonkey6()
waitforupgrade3()
deselect()

sniper1()
waitforupgrade2()
deselect()

canaffordtower("e")
bomb1()
bomb1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

waituntil("r40trickytracks.png")

sleep 5000

mermonkey4()
send {backspace}

bomb1()
send {backspace}

canaffordtower("k")
village1()
village1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
deselect()

canaffordtower("e")
bomb2()
bomb2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
deselect()

canaffordtower("f")
alchemist1()
alchemist1()
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
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
deselect()

canaffordtower("r")
tack1()
tack1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
deselect()

dart3()
send {backspace}

canaffordtower("r")
tack2()
tack2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
deselect()

mermonkey3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
deselect()

mermonkey5()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
deselect()

sniper1()
send {backspace}

mermonkey1()
waitforupgrade3()
deselect()

mermonkey2()
waitforupgrade3()
deselect()

mermonkey6()
waitforupgrade3()
deselect()

mermonkey7()
waitforupgrade3()
deselect()

canaffordtower("t")
ice2()
ice2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade1()
waitforupgrade1()
deselect()

canaffordtower("f")
alchemist2()
alchemist2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("f")
alchemist3()
alchemist3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

bomb2()
waitforupgrade3()
deselect()

ice1()
waitforupgrade1()
deselect()

canaffordtower("k")
village2()
village2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("y")
glue1()
glue1()
targetsmart()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
deselect()

canaffordtower("y")
glue2()
glue2()
targetsmart()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
deselect()

canaffordtower("r")
tack3()
tack3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("f")
alchemist4()
alchemist4()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("w")
boomer2()
boomer2()
targetsmart()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("w")
boomer3()
boomer3()
targetsmart()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

village1()
waitforupgrade1()
deselect()

mermonkey5()
waitforupgrade1()
deselect()

tack2()
waitforupgrade3()
deselect()


backtomainmenu()


=::ExitApp
