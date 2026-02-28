#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

ben() {
	MouseClick, Left, 2281, 285
	sleep 200
	MouseClick, Left, 2135, 581
	sleep 200
}
desperado1() {
	MouseClick, Left, 2445, 828
	sleep 200
	MouseClick, Left, 850, 728
	sleep 200
}
clickdesperado1() {
	MouseClick, Left, 850, 728
	sleep 200
}
desperado2() {
	MouseClick, Left, 2445, 828
	sleep 200
	MouseClick, Left, 1414, 746
	sleep 200
}
dart1() {
	MouseClick, Left, 926, 680
	sleep 200
}
boomer1() {
	MouseClick, Left, 1070, 547
	sleep 200
}
boomer2() {
	MouseClick, Left, 1341, 807
	sleep 200
}
wizard1() {
	MouseClick, Left, 1242, 756
	sleep 200
}
wizard2() {
	MouseClick, Left, 1012, 620
	sleep 200
}
druid1() {
	MouseClick, Left, 1325, 704
	sleep 200
}
druid2() {
	MouseClick, Left, 1248, 845
	sleep 200
}
sniper1() {
	MouseClick, Left, 2126, 754
	sleep 200
}
sniper2() {
	MouseClick, Left, 2044, 812
	sleep 200
}
village1() {
	MouseClick, Left, 1549, 1061
	sleep 200
}
village2() {
	MouseClick, Left, 1132, 896
	sleep 200
}
farm1() {
	MouseClick, Left, 2071, 1188
	sleep 200
}
farm2() {
	MouseClick, Left, 1853, 1308
	sleep 200
}
mermonkey1() {
	MouseClick, Left, 736, 380
	sleep 200
}
mermonkey2() {
	MouseClick, Left, 869, 584
	sleep 200
}
mermonkey3() {
	MouseClick, Left, 1597, 945
	sleep 200
}
mermonkey4() {
	MouseClick, Left, 1413, 1071
	sleep 200
}
mermonkey5() {
	MouseClick, Left, 1292, 1150
	sleep 200
}
mermonkey6() {
	MouseClick, Left, 1405, 1172
	sleep 200
}
mermonkey7() {
	MouseClick, Left, 1758, 1002
	sleep 200
}
mermonkey8() {
	MouseClick, Left, 1847, 939
	sleep 200
}
mermonkey9() {
	MouseClick, Left, 1286, 1251
	sleep 200
}
mermonkey10() {
	MouseClick, Left, 1173, 1233
	sleep 200
}
sfactory() {
	MouseClick, Left, 1023, 967
	sleep 200
}
glue1() {
	MouseClick, Left, 1173, 515
	sleep 200
}
glue2() {
	MouseClick, Left, 1001, 1052
	sleep 200
}
;-------------START-------------

WinActivate, BloonsTD6
deselect()
sleep 1000

desperado1()
desperado2()
send {q}
dart1()
send {w}
boomer2()
send {z}
sniper1()
sniper1()
upgradet1()
targetsmart()
deselect()
send {o}
mermonkey1()
send {o}
mermonkey2()
send {o}
mermonkey3()
send {a}
wizard1()
wizard1()
upgradet1()
upgradet1()
upgradet1()
upgradet3()
upgradet3()
deselect()
send {g}
druid1()
deselect()
buycashdrop()

startgame()

usecashdrop()
ben()

mermonkey1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

sniper1()
waitforupgrade2()
deselect()

canaffordtower("g")
druid2()

canaffordtower("a")
wizard2()
wizard2()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

mermonkey2()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("z")
sniper2()
sniper2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()
click, 510, 406 	;target camos
deselect()

canaffordtower("k")
village1()
village1()
waitforupgrade3()
waitforupgrade3()
deselect()

mermonkey3()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("o")
mermonkey4()
mermonkey4()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

mermonkey3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("o")
mermonkey5()
mermonkey5()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

druid2()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

mermonkey2()
waitforupgrade1()
deselect()

canaffordtower("o")
mermonkey6()
mermonkey6()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

village1()
waitforupgrade1()
waitforupgrade1()
deselect()

canaffordtower("o")
mermonkey7()
mermonkey7()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("o")
mermonkey8()
mermonkey8()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("o")
mermonkey9()
mermonkey9()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("o")
mermonkey10()
mermonkey10()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("h")
farm1()
farm1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("h")
farm2()
farm2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

wizard1()
waitforupgrade1()
deselect()

canaffordtower("k")
village2()
village2()
waitforupgrade1()
waitforupgrade1()
deselect()

druid2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
deselect()

village2()
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

wizard1()
waitforupgrade1()
deselect()

village2()
waitforupgrade2()
deselect()

clickdesperado1()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("w")
boomer1()
boomer1()
targetsmart()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

boomer2()
targetsmart()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("y")
glue1()
glue1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("y")
glue2()
glue2()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
deselect()

sniper1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
deselect()

backtomainmenu()


=::ExitApp
