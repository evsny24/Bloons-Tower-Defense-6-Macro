CoordMode, Pixel, Screen
#SingleInstance, Force
DetectHiddenWindows, On

;==========================Status=Updates=========================================================================

UpdateStatus(step)
{
	DetectHiddenWindows, On
    	WinGet, target_hwnd, ID, ScriptStatus  ; Your GUI window title

    	VarSetCapacity(copyDataStruct, A_PtrSize * 3, 0)			; Allocate COPYDATASTRUCT buffer: 3 pointers (dwData, cbData, lpData)
    	VarSetCapacity(wstr, (StrLen(step) + 1) * 2, 0)				; Allocate buffer for UTF-16 string (+1 for null terminator)
   	StrPut(step, &wstr, "UTF-16")						; Write the string (UTF-16, null-terminated) into wstr buffer

	; Fill COPYDATASTRUCT:
    	NumPut(0, copyDataStruct, 0, "UPtr")                         		; dwData (unused)
   	NumPut((StrLen(step) + 1) * 2, copyDataStruct, A_PtrSize, "UPtr")  	; cbData in bytes, include null terminator
   	NumPut(&wstr, copyDataStruct, A_PtrSize * 2, "UPtr")       		; lpData pointer to string

   	SendMessage, 0x4A, 0, &copyDataStruct,, ahk_id %target_hwnd%		; Send the message to the GUI window
}

;==========================Upgrade=Functions========================================================================

upgradet1() 
{
	UpdateStatus("upgrading_path_1")
	ImageSearch, x, y, 24, 537, 2207, 756, .\assets\upgradebuttonr1.png
	if (ErrorLevel = 1)
		ImageSearch, x, y, 24, 537, 2207, 756, .\assets\upgradebuttonl1.png
	if (ErrorLevel = 0)
		send {,}
	return
	sleep 500
}
upgradet2() 
{
	UpdateStatus("upgrading_path_2")
	ImageSearch, x, y, 24, 741, 2207, 953, .\assets\upgradebuttonr2.png
	if (ErrorLevel = 1)
		ImageSearch, x, y, 24, 741, 2207, 953, .\assets\upgradebuttonl2.png
	if (ErrorLevel = 0)
		send {.}
	return
	sleep 500
}
upgradet3()
{
	UpdateStatus("upgrading_path_3")
	ImageSearch, x, y, 24, 931, 2207, 1156, .\assets\upgradebuttonr3.png
	if (ErrorLevel = 1)
		ImageSearch, x, y, 24, 931, 2207, 1156, .\assets\upgradebuttonl3.png
	if (ErrorLevel = 0)
		send {/}
	return
	sleep 500
}
waitforupgrade1()
{
	UpdateStatus("waiting_for_upgrade_1")
	loop
	{		
		upgradet1()
		sleep 100
		if (ErrorLevel = 1)
			continue
		else
			break
		return
	}
	sleep 200
	return
}
waitforupgrade2()
{
	UpdateStatus("waiting_for_upgrade_2")
	loop
	{		
		upgradet2()
		sleep 100
		if (ErrorLevel = 1)
			continue
		else
			break
		return
	}
	sleep 200
	return
}
waitforupgrade3()
{
	UpdateStatus("waiting_for_upgrade_3")
	loop
	{		
		upgradet3()
		sleep 100
		if (ErrorLevel = 1)
			continue
		else
			break
		return
	}
	sleep 200
	return
}

;==========================Wait-Until=Functions=======================================================================

canaffordtower(hotkey)
{
	UpdateStatus("saving_for_tower")
	loop
	{
		sleep 500
		MouseMove, 1000, 1000
		send, %hotkey%
		ImageSearch, x, y, 0, 0, 2560, 1440, .\assets\cancelplacement.png
		if (ErrorLevel = 0)
			break
	}
	sleep 200
	return
}
waituntil(picture)
{
	UpdateStatus("waiting_for_round")
	loop
	{
		ImageSearch, x, y, 0, 0, 2560, 1440, .\assets\%picture%
		if (ErrorLevel = 1)
			continue
		else
			break
		return
	}
	sleep 200
	return
}

;==========================Repetetive=Tasks===========================================================================

startgame()
{
	UpdateStatus("starting_game")
	send {space}					
	sleep 200
	send {space}
}
deselect()
{
	UpdateStatus("deselecting")
	MouseClick, Left, 50, 0
	sleep 200
}
targetsmart()
{
	UpdateStatus("changing_targeting")
	send {Tab}
	sleep 200
	send {Tab}
	sleep 200
	send {Tab}
	sleep 200
}
imp()
{
	UpdateStatus("selecting_difficulty")
	sleep 500
	click, 1719, 571
	sleep 500
	click, 1719, 1002
	sleep 200
	waitforload()
}
easy()
{
	UpdateStatus("selecting_difficulty")
	sleep 500
	click, 825 571
	sleep 500
	click, 842 786
	sleep 200
	waitforload()
}
waitforload()
{
	UpdateStatus("waiting_for_load")
	loop {
	ImageSearch, x, y, 0, 0, 2560, 1440, .\assets\loading.png
		if (ErrorLevel = 0)
			break
	}
	loop {
	ImageSearch, x, y, 0, 0, 2560, 1440, .\assets\loading.png
		if (ErrorLevel = 1)
			break
	}
	sleep 1000
}
buycashdrop()
{	
	UpdateStatus("buying_cash_drop")
	sleep 200
	Click, Left, 2278, 1352
	sleep 500
	Click, Left, 2350, 14
	sleep 50
	Click, Left, 2281, 653
	sleep 1000
	Click, Left, 532, 901
	sleep 500
	Click, Left, 1900, 1187
	sleep 500
	click, left, 98, 72
	sleep 500
	Click, Left, 2278, 1352
	sleep 200
}
usecashdrop()
{
	UpdateStatus("using_cash_drop")
	sleep 200
	send, {LShift Down}
	send, {]}
	send, {LShift Up}
	click, 1182, 496
	sleep 1000
	MouseMove, 1365, 515
}

;==========================Resetting=Things===========================================================================

backtomainmenu()
{
UpdateStatus("wait_for_game_end")
	loop
		{
		sleep 2000
		ImageSearch, x, y, 0, 0, 2560, 1440, *20 .\assets\victory.png
			if (ErrorLevel = 0)
				{
				loop
					{
					ImageSearch, x, y, 0, 0, 2560, 1440, .\assets\home.png
					if (ErrorLevel = 0)
						{
						click, %x% %y%
						waitforload()
						Run .\mainscripts\collection_event_farm.ahk
						return
						}
					sleep 100
					}
				}
			else
				{
				click, 1142, 1264
				continue
				}
		}

}
resetfailsafe()
{
	ImageSearch, x, y, 0, 0, 2560, 1440, *30 .\assets\defeat.png
		if (ErrorLevel = 0)
			{	
			UpdateStatus("failsafe_restarting")
			UpdateStatus("!LOCK")
			sleep 1000
			ImageSearch, x, y, 0, 0, 2560, 1440, *30 .\assets\failhome.png
			click, %x% %y%

			SplitPath, A_ScriptDir, , parentDir			;get the parent directory of this script
			targetDir := parentDir . "\mapscripts\"			;build path to mapscripts
			WinGet, idList, List, ahk_exe AutoHotkey.exe		;get a list of all running AutoHotkey windows
			Loop, %idList%						;loop through each one
				{
   				id := idList%A_Index%
   			 	WinGetTitle, winTitle, ahk_id %id%
   			 	if (InStr(winTitle, targetDir) == 1 && InStr(winTitle, ".ahk"))
     					WinKill, ahk_id %id%			;if start with targetDir and is ahk, close it
				}

			sleep 5000
			reload
			}
}

;==========================Main=Loop=Functions=========================================================================

/*
activatedruidabilityclosed()
{
	ImageSearch, a, b, 0, 0, 2560, 1440, *30 .\assets\druidabilityclosed.png
		if (ErrorLevel = 0)
			{
				FileRead, currentStatus, .\textfiles\status_current.txt
				UpdateStatus("click_druid_ability")
				UpdateStatus("!LOCK")
				MouseGetPos, mousex, mousey
				click, %a% %b%
				MouseMove, mousex, mousey
				sleep 1000
				UpdateStatus("!UNLOCK")
				UpdateStatus(currentStatus)
			}
}
activatedruidabilityopened()
{
	ImageSearch, a, b, 0, 0, 2560, 1440, *30 .\assets\druidabilityopened.png
		if (ErrorLevel = 0)
			{
				FileRead, currentStatus, .\textfiles\status_current.txt
				UpdateStatus("click_druid_ability")
				UpdateStatus("!LOCK")
				MouseGetPos, mousex, mousey
				click, %a% %b%
				MouseMove, mousex, mousey
				sleep 1000
				UpdateStatus("!UNLOCK")
				UpdateStatus(currentStatus)
			}
}
*/

levelup()
{
	ImageSearch, x, y, 0, 0, 2560, 1440, *30 .\assets\levelup.png
		if (ErrorLevel = 0)
			{
				FileRead, currentStatus, .\textfiles\status_current.txt
				UpdateStatus("level_up_continue")
				UpdateStatus("!LOCK")
				MouseGetPos, mousex, mousey
				click, %x% %y%
				MouseMove, mousex, mousey
				sleep 1000
				UpdateStatus("!UNLOCK")
				UpdateStatus(currentStatus)
			}
}

;=============================Long=Functions=============================================================================

breaktrees()
{
	UpdateStatus("breaking_trees")
	sleep 1000
	click, 273, 181
	sleep 200
	loop
	{
		ImageSearch, x, y, 0, 0, 2560, 1440, .\assets\check1.png
		if (ErrorLevel = 0)
			{
			click, %x% %y%
			break
			}
		else
			continue
		return
	}
	sleep 200
	click, 241, 482
	sleep 200
	loop
	{
		ImageSearch, x, y, 0, 0, 2560, 1440, .\assets\check2.png
		if (ErrorLevel = 0)
			{
			click, %x% %y%
			break
			}
		else
			continue
		return
	}
	sleep 200
	click, 243, 895
	sleep 200
	loop
	{
		ImageSearch, x, y, 0, 0, 2560, 1440, .\assets\check3.png
		if (ErrorLevel = 0)
			{
			click, %x% %y%
			break
			}
		else
			continue
		return
	}
	sleep 200
	click, 259, 1231
	sleep 200
	loop
	{
		ImageSearch, x, y, 0, 0, 2560, 1440, .\assets\check4.png
		if (ErrorLevel = 0)
			{
			click, %x% %y%
			break
			}
		else
			continue
		return
	}
	sleep 200
}
openboxes()
{
	UpdateStatus("opening_prize_boxes")
	ImageSearch, x, y, 0, 0, 2560, 1440, *15 .\assets\play.png
	if (ErrorLevel = 1)
		{
		click, 1287, 925
		sleep 500
		loop
			{
			sleep 200
			ImageSearch, a, b, 0, 0, 2560, 1440, *90 .\assets\grayinsta.jpg
			if (ErrorLevel = 0)
				{
				click, %a%, %b%
				sleep 200
				click, %a%, %b%
				sleep 200
				}
			ImageSearch, a, b, 0, 0, 2560, 1440, *90 .\assets\grayinsta2.jpg
			if (ErrorLevel = 0)
				{
				click, %a%, %b%
				sleep 200
				click, %a%, %b%
				sleep 200
				}
			ImageSearch, a, b, 0, 0, 2560, 1440, *90 .\assets\uncommoninsta.png
			if (ErrorLevel = 0)
				{
				click, %a%, %b%
				sleep 200
				click, %a%, %b%
				sleep 200
				}
			ImageSearch, a, b, 0, 0, 2560, 1440, *90 .\assets\uncommoninsta2.png
			if (ErrorLevel = 0)
				{
				click, %a%, %b%
				sleep 200
				click, %a%, %b%
				sleep 200
				}
			ImageSearch, a, b, 0, 0, 2560, 1440, *90 .\assets\blueinsta.png
			if (ErrorLevel = 0)
				{
				click, %a%, %b%
				UpdateStatus("!addrare")
				sleep 200
				click, %a%, %b%
				sleep 200
				}
			ImageSearch, a, b, 0, 0, 2560, 1440, *90 .\assets\blueinsta2.png
			if (ErrorLevel = 0)
				{
				click, %a%, %b%
				UpdateStatus("!addrare")
				sleep 200
				click, %a%, %b%
				sleep 200
				}
			ImageSearch, c, d, 0, 0, 2560, 1440, *90 .\assets\purpleinsta.png
			if (ErrorLevel = 0)
				{
				click, %c%, %d%
				UpdateStatus("!addepic")
				sleep 200
				click, %c%, %d%
				sleep 200
				}
			ImageSearch, c, d, 0, 0, 2560, 1440, *90 .\assets\purpleinsta2.png
			if (ErrorLevel = 0)
				{
				click, %c%, %d%
				UpdateStatus("!addepic")
				sleep 200
				click, %c%, %d%
				sleep 200
				}
			ImageSearch, e, f, 0, 0, 2560, 1440, *90 .\assets\leginsta.png
			if (ErrorLevel = 0)
				{
				click, %e%, %f%
				UpdateStatus("!addleg")
				sleep 200
				click, %e%, %f%
				sleep 200
				}
			ImageSearch, e, f, 0, 0, 2560, 1440, *90 .\assets\leginsta2.png
			if (ErrorLevel = 0)
				{
				click, %e%, %f%
				UpdateStatus("!addleg")
				sleep 200
				click, %e%, %f%
				sleep 200
				}
			ImageSearch, g, h, 0, 0, 2560, 1440, *15 .\assets\back.png
			if (ErrorLevel = 0)
				{
				click, %g%, %h%
				sleep 1000
				break
				}
			click, 1287, 925		;tryna hit the open more boxes button for lower tier boxes
			elif (ErrorLevel = 1)
				continue
			}
		}

}
