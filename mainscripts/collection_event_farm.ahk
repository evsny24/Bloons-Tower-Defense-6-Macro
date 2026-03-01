#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\

WinActivate, BloonsTD6
WinGetActiveStats, winT, winW, winH, winX, winY

;===============================START===============================================================================

sleep 1000
openboxes()								; Check for boxes to open

UpdateStatus("is_there_popup?")
imagesearch, x, y, 0, 0, winW, winH, .\assets\dlcpopup.png		; Check for annoying popup ads for DLCs
if (ErrorLevel = 0)
	click, %x% %y%

UpdateStatus("equip_benjamin_hero")					; Is benjamin equipped?
imagesearch, x, y, 0, 0, winW, winH, .\assets\benjaminequipped.png
if (ErrorLevel = 1)	
	{
	imagesearch, x, y, 0, 0, winW, winH, .\assets\heroes.png	; Go select him if not
	click, %x% %y%
	sleep 500

	imagesearch, x, y, 0, 0, winW, winH, .\assets\benjy.png
	click, %x% %y%
	sleep 200
	
	imagesearch, x, y, 0, 0, winW, winH, .\assets\select.png
	click, %x% %y%
	sleep 200

	send {escape}							; Exit hero menu
	sleep 500
	}

UpdateStatus("select_play")						; Enter map selection screen
imagesearch, x, y, 0, 0, winW, winH, .\assets\play.png
click, %x% %y%
sleep 500

UpdateStatus("select_expert")						; Click expert
imagesearch, x, y, 0, 0, winW, winH, .\assets\expert.png
click, %x% %y%
MouseMove, 0, 0
sleep 500

UpdateStatus("look_for_event_map")
loop 3 {								; Search for event map and logo coords
sleep 300
imagesearch, x, y, 0, 0, 2560, 1440, *100 .\assets\totem.png
if (ErrorLevel = 0)
	break
else
	{								; Search for every possible event, switching pages if needed
	imagesearch, x, y, 0, 0, 2560, 1440, *100 .\assets\totem2.png
	if (ErrorLevel = 0)
		break
	else
		{
		imagesearch, x, y, 0, 0, 2560, 1440, *100 .\assets\totem3.png
		if (ErrorLevel = 0)
			break
		else
			{
			imagesearch, x, y, 0, 0, 2560, 1440, *100 .\assets\totem4.png
			if (ErrorLevel = 0)
				break
			else
				{
				imagesearch, x, y, 0, 0, 2560, 1440, *100 .\assets\totem5.png
				if (ErrorLevel = 0)
					break
				else
					{
					imagesearch, x, y, 0, 0, 2560, 1440, *100 .\assets\totem6.png
					if (ErrorLevel = 0)
						break
					else
						{
						imagesearch, e, f, 0, 0, 2560, 1440, .\assets\expert.png
						click, %e% %f%
						}
					}
				}
			}
		}
	}
}

;==========Finding=and=picking=map=and=difficulty=based=on=config===============================================================================

allThumbnails := ["bloodypuddles", "darkdungeons", "glacialtrail", "workshop", "trickytracks", "darkcastle", "floodedvalley", "infernal", "muddypuddles", "ouch", "quad", "ravine", "sanctuary"]
cashThumbnails := ["bloodypuddles", "darkdungeons", "glacialtrail", "workshop", "trickytracks"]
noCashThumbnails := ["darkcastle", "floodedvalley", "infernal", "muddypuddles", "ouch", "quad", "ravine", "sanctuary"]
configPath := ".\config.ini"
nomapfound := True

IniRead, onlyImpoppable, %configPath%, Settings, onlyImpoppable, false			; Read config file
IniRead, onlyEasy, %configPath%, Settings, onlyEasy, false
IniRead, noCashDrops, %configPath%, Settings, noCashDrops, false
IniRead, randomMaps, %configPath%, Settings, randomMaps, falseS

if (onlyImpoppable = "true") {								; All impoppable maps
	Loop, % allThumbnails.MaxIndex()
		{
    		mapName := allThumbnails[A_Index]
    		thumbPath := ".\assets\" . mapName . "thumb.png"
		scriptPath := ".\mapscripts\" . mapName . "imp.ahk"
    		imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    		if (ErrorLevel = 0)
        		{
			nomapfound := False
			click, %a% %b%
			imp()
			Run %scriptPath%
			goto, foundmap
			}
		}
}
if (onlyEasy = "true") {								; All easy maps
	Loop, % allThumbnails.MaxIndex()
		{
    		mapName := allThumbnails[A_Index]
    		thumbPath := ".\assets\" . mapName . "thumb.png"
		scriptPath := ".\mapscripts\" . mapName . "easy.ahk"
    		imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    		if (ErrorLevel = 0)
        		{
			nomapfound := False
			click, %a% %b%
			easy()
			Run %scriptPath%
			goto, foundmap
			}
		}
}
if (noCashDrops = "true") {								; Doesn't use cash drops
	Loop, % cashThumbnails.MaxIndex()
		{
    		mapName := cashThumbnails[A_Index]
    		thumbPath := ".\assets\" . mapName . "thumb.png"
		scriptPath := ".\mapscripts\" . mapName . "easy.ahk"
    		imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    		if (ErrorLevel = 0)
        		{
			nomapfound := False
			click, %a% %b%
			easy()
			Run %scriptPath%
			goto, foundmap
			}
		}
	if (nomapfound) {
		Loop, % noCashThumbnails.MaxIndex()
			{
    			mapName := noCashThumbnails[A_Index]
    			thumbPath := ".\assets\" . mapName . "thumb.png"
			scriptPath := ".\mapscripts\" . mapName . "imp.ahk"
    			imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    			if (ErrorLevel = 0)
        			{
				nomapfound := False
				click, %a% %b%
				imp()
				Run %scriptPath%
				goto, foundmap
				}
			}
	}
}
if (onlyImpoppable != "true" && onlyEasy != "true" && noCashDrops != "true" && randomMaps != "true") {		; Per-map difficulty selection
	Loop, % allThumbnails.MaxIndex()
		{
    		mapName := allThumbnails[A_Index]
    		thumbPath := ".\assets\" . mapName . "thumb.png"
		IniRead, mapDifficulty, %configPath%, Settings, %mapName%, easy
		scriptPath := ".\mapscripts\" . mapName . mapDifficulty . ".ahk"
    		imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    		if (ErrorLevel = 0)
        		{
			nomapfound := False
			click, %a% %b%
			%mapDifficulty%()
			Run %scriptPath%
			goto, foundmap
			}
		}
}
if (nomapfound || randomMaps) {							; No ongoing collection event or bonus map targeting turned off
	WinHide, InstaCounter	; Don't need counter GUI
	Click, 1453, 1292
	sleep 200
	Click, 1784, 1296
	sleep 200
	Click, 1928, 751
	sleep 200
	imp()
	Run .\mapscripts\floodedvalleyimp.ahk
}
else if (!nomapfound && !randomMaps)
	WinShow, InstaCounter	; Replace counter GUI if config changes

foundmap:

UpdateStatus("!UNLOCK")								; Unlock status GUI because it's locked during resets

;=========================Safeguards======================================================================================

loop										; Do not need break because script is supposed to reload after map
{
	sleep 500
	resetfailsafe()
	levelup()
}

=::ExitApp