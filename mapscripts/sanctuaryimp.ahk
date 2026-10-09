#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\
CoordMode, Pixel, Screen

;This code is going to be MESSY! Sorry, but sanctuary is an atrocious map to program since towers move and cannot be tracked easily.
;Therefore, this is the only gameplay script I'll add comments on to make it almost as readable as the other scripts already are.

;--------------------------START-------------------------------------

WinActivate, BloonsTD6
deselect()
deselect()
sleep 1000

Click, 2282, 301			;get ben
sleep 200
Click, 1987, 420

send {q}
Click, 373, 383				;get darts
send {q}
Click, 1861, 374

send {z}
Click, 1011, 1227			;get sniper 1-2-0 strong and base
sleep 200
Click, 1011, 1227
sleep 200
upgradet1()
upgradet2()
upgradet2()
targetsmart()
deselect()
send {z}
Click, 284, 1255

send {x}				;get sub 2-0-3 and start the game in middle
Click, 1244, 254
sleep 200
Click, 1244, 254
sleep 200
upgradet1()
upgradet1()
upgradet3()
upgradet3()
startgame()
waitforupgrade3()
deselect()

canaffordtower("c")			;get boat 0-3-2
Click, 790, 222
sleep 200
Click, 790, 222
sleep 200
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("k")			;get village 0-0-2
Click, 1114, 275
sleep 200
Click, 1114, 275
sleep 200
waitforupgrade3()
waitforupgrade3()
deselect()

canaffordtower("z")			;get sniper 0-2-4
Click, 1362, 349
sleep 200
Click, 1362, 349
sleep 200
waitforupgrade3()
waitforupgrade3()
waitforupgrade2()
waitforupgrade2()
waitforupgrade3()
waitforupgrade3()
deselect()

waituntil("r44sanctuary.png")

Click, 1113, 258			;upgrade village to 2-0-2
waitforupgrade1()
waitforupgrade1()
deselect()

waituntil("r49sanctuary.png")

sleep 6390
Click, 267, 1383			;use benjamin ability so dont die
sleep 200

Click, 1305, 212
sleep 200				;upgrade village to 2-0-3
waitforupgrade3()
deselect()

canaffordtower("f")			;get alch 3-2-0
Click, 1275, 356
sleep 200
Click, 1275, 356
sleep 200
waitforupgrade1()
waitforupgrade1()
waitforupgrade1()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("g")			;get druid 1-4-0
Click, 1004, 144
sleep 200
Click, 1004, 144
sleep 200
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
waitforupgrade1()
waitforupgrade2()
deselect()

waituntil("r60sanctuary.png")

Click, 1177, 365			;upgrade sniper to 0-2-5
waitforupgrade3()
deselect()

Click, 1006, 127			;upgrade druid to 1-5-0
waitforupgrade2()
deselect()

waituntil("r73sanctuary.png")

Send {v}
Click, 311, 625				;set up plane and village on platform, get plane 2-0-5
Send {k}
Click, 299, 497
sleep 200
Click, 311, 625
waitforupgrade1()
waitforupgrade1()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
waitforupgrade3()
deselect()

waituntil("r89sanctuary.png")
Click, 299, 497				;upgrade village to 0-3-0
waitforupgrade2()
waitforupgrade2()
waitforupgrade2()
deselect()

canaffordtower("j")
Click, 1717, 1202			;get sfactory 2-5-0
sleep 100
Click, 1717, 1202
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


