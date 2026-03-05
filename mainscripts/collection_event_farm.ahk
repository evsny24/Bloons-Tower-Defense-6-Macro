#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\

configPath := ".\config.ini"
allThumbnails := ["bloodypuddles", "darkdungeons", "glacialtrail", "workshop", "trickytracks", "darkcastle", "floodedvalley", "infernal", "muddypuddles", "ouch", "quad", "ravine", "sanctuary"]
cashThumbnails := ["bloodypuddles", "darkdungeons", "glacialtrail", "workshop", "trickytracks"]
noCashThumbnails := ["darkcastle", "floodedvalley", "infernal", "muddypuddles", "ouch", "quad", "ravine", "sanctuary"]

WinActivate, BloonsTD6
WinGetActiveStats, winT, winW, winH, winX, winY

;===============================START===============================================================================

sleep 1000
openboxes()								; Check for boxes to open

UpdateStatus("is_there_popup?")
imagesearch, x, y, 0, 0, winW, winH, .\assets\dlcpopup.png		; Check for annoying popup ads for DLCs
if (ErrorLevel = 0)
	click, %x% %y%

UpdateStatus("equip_benjamin")						; Is benjamin equipped?
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

IniRead, ignoringEvent, %configPath%, EventSettings, ignoreEvent, false
if (ignoringEvent = "true")						; If not farming event:
	goto, nonEventSelection							; Skip to non-event map selection
else
	WinShow, InstaCounter						; If config changes during runtime, put GUI back

UpdateStatus("find_bonus_indicator")				; Find bonus indicator
loop 3 {
	loop 6 {
		noTotemFound := true
		eventPath := ".\assets\totem" . A_Index . ".png"
		sleep 200
		imagesearch, x, y, 0, 0, 2560, 1440, % "*100 " . eventPath
		if (ErrorLevel = 0)
			goto, findmap
	}
imagesearch, e, f, 0, 0, 2560, 1440, .\assets\expert.png
click, %e% %f%
}

goto, nonEventSelection							; If indicator not found, will go to non-event map selection

findmap:

;==========Finding=and=picking=map=and=difficulty=based=on=config===============================================================================

IniRead, onlyImpoppable, %configPath%, eventSettings, onlyImpoppable, false		; Read config file for preset configuration states
IniRead, onlyEasy, %configPath%, eventSettings, onlyEasy, false
IniRead, noCashDrops, %configPath%, eventSettings, noCashDrops, false

if (onlyImpoppable = "true") {								; If onlyImpoppable is selected
	UpdateStatus("playing_impoppable")
	Loop, % allThumbnails.MaxIndex()						; Find which map is next to the bonus indicator
		{
    		mapName := allThumbnails[A_Index]
    		thumbPath := ".\assets\" . mapName . "thumb.png"
		scriptPath := ".\mapscripts\" . mapName . "imp.ahk"
    		imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    		if (ErrorLevel = 0)
        		{
			click, %a% %b%
			imp()								; Play the map on impoppable
			Run %scriptPath%
			goto, foundmap
			}
		}
}
if (onlyEasy = "true") {								; If onlyEasy is selected
	UpdateStatus("playing_easy")
	Loop, % allThumbnails.MaxIndex()						; Find which map is next to the bonus indicator
		{
    		mapName := allThumbnails[A_Index]
    		thumbPath := ".\assets\" . mapName . "thumb.png"
		scriptPath := ".\mapscripts\" . mapName . "easy.ahk"
    		imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    		if (ErrorLevel = 0)
        		{
			click, %a% %b%
			easy()								; Play the map on easy
			Run %scriptPath%
			goto, foundmap
			}
		}
}
if (noCashDrops = "true") {								; if noCashDrops is enabled
	UpdateStatus("no_cash_drop_mode")
	Loop, % cashThumbnails.MaxIndex()						; Find which map is next to the bonus indicator
		{
    		mapName := cashThumbnails[A_Index]
    		thumbPath := ".\assets\" . mapName . "thumb.png"
		scriptPath := ".\mapscripts\" . mapName . "easy.ahk"
    		imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    		if (ErrorLevel = 0)
        		{
			click, %a% %b%
			easy()								; Play easy if it requires a cash drop
			Run %scriptPath%
			goto, foundmap
			}
		}
	Loop, % noCashThumbnails.MaxIndex()
		{
    		mapName := noCashThumbnails[A_Index]
    		thumbPath := ".\assets\" . mapName . "thumb.png"
		scriptPath := ".\mapscripts\" . mapName . "imp.ahk"
    		imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    		if (ErrorLevel = 0)
        		{
			click, %a% %b%
			imp()								; Play impoppable if it does not require a cash drop
			Run %scriptPath%
			goto, foundmap
			}
		}
}
if (onlyImpoppable != "true" && onlyEasy != "true" && noCashDrops != "true") {		; If no presets are selected
	UpdateStatus("per_map_configurations")
	Loop, % allThumbnails.MaxIndex()						; Play the map next to the indicator
		{
    		mapName := allThumbnails[A_Index]
    		thumbPath := ".\assets\" . mapName . "thumb.png"
		IniRead, mapDifficulty, %configPath%, eventSettings, %mapName%, easy
		scriptPath := ".\mapscripts\" . mapName . mapDifficulty . ".ahk"
    		imagesearch, a, b, x-500, y-300, x, y+300, % "*50 " . thumbPath
    		if (ErrorLevel = 0)
        		{
			click, %a% %b%
			%mapDifficulty%()						; Play on the difficulty specified in config
			Run %scriptPath%
			goto, foundmap
			}
		}
}

nonEventSelection:									; If collection event turned off or not found

UpdateStatus("random_map")
WinHide, InstaCounter									; Don't need counter GUI
randMapDifficulty := "null"
while (randMapDifficulty = "null") {							; Find a random map that is not null
	Random, randInt, 1, allThumbnails.MaxIndex()
	randMap := allThumbnails[randInt]
	IniRead, randMapDifficulty, %configPath%, nonEventSettings, %randMap%, null
}
thumbPath := ".\assets\" . randMap . "thumb.png"
scriptPath := ".\mapscripts\" . randMap . randMapDifficulty . ".ahk"
loop 3 {										; Find the map by switching pages until it is found
	sleep 500
	imagesearch, a, b, 0, 0, 2560, 1440, % "*50 " . thumbPath
	if (ErrorLevel = 0)
		{
		click, %a% %b%
		%randMapDifficulty%()							; Play on difficulty specified in config
		Run %scriptPath%
		goto, foundmap
		}
	else 
		{
		imagesearch, e, f, 0, 0, 2560, 1440, .\assets\expert.png
		click, %e% %f%
		}
}

foundmap:

UpdateStatus("!UNLOCK")									; Unlock status GUI because it's locked during fail resets

;=========================Safeguards======================================================================================

loop											; Do not need break because script is supposed to reload after map
{
	sleep 500
	resetfailsafe()
	levelup()
}

=::ExitApp