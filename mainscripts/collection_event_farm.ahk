#SingleInstance Force
#Include %A_ScriptDir%\..\mainscripts\default.ahk
SetWorkingDir %A_ScriptDir%
SetWorkingDir ..\

WinActivate, BloonsTD6
WinGetActiveStats, winT, winW, winH, winX, winY
nomapfound := True

;===============================START===============================================================================

sleep 1000
openboxes()								;check for boxes to open

UpdateStatus("is_there_popup?")
imagesearch, x, y, 0, 0, winW, winH, .\assets\dlcpopup.png		;check for annoying popup ads for DLCs
if (ErrorLevel = 0)
	click, %x% %y%

UpdateStatus("equip_benjamin_hero")					;is benjamin equipped?
imagesearch, x, y, 0, 0, winW, winH, .\assets\benjaminequipped.png
if (ErrorLevel = 1)	
	{
	imagesearch, x, y, 0, 0, winW, winH, .\assets\heroes.png	;go select him if not
	click, %x% %y%
	sleep 500

	imagesearch, x, y, 0, 0, winW, winH, .\assets\benjy.png
	click, %x% %y%
	sleep 200
	
	imagesearch, x, y, 0, 0, winW, winH, .\assets\select.png
	click, %x% %y%
	sleep 200

	send {escape}							;exit hero menu
	sleep 500
	}

UpdateStatus("select_play")						;enter map selection screen
imagesearch, x, y, 0, 0, winW, winH, .\assets\play.png
click, %x% %y%
sleep 500

UpdateStatus("select_expert")						;click expert
imagesearch, x, y, 0, 0, winW, winH, .\assets\expert.png
click, %x% %y%
MouseMove, 0, 0
sleep 500

UpdateStatus("look_for_event_map")
loop 3 {								;search for event map and logo coords
sleep 500
imagesearch, x, y, 0, 0, 2560, 1440, *100 .\assets\totem.png
if (ErrorLevel = 0)
	break
else
	{								;search for every possible event, switching pages if needed
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

;-------------------defining-mode-for-each-map-----------------

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\infernalthumb.png	;CHANGE DIFFICULTY SETTINGS PER MAP HERE
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()							;Switch between easy() and impoppable() and adjust subsequent line correspondinly
		Run .\mapscripts\infernalimp.ahk				;Switch script name between mapnameeasy.ahk and mapnameimp.ahk
		}

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\darkdungeonsthumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\darkdungeonsimp.ahk
		}

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\glacialtrailthumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\glacialtrailimp.ahk
		}
	
imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\sanctuarythumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\sanctuaryimp.ahk
		}
	
imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\ravinethumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\ravineimp.ahk 
		}

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\floodedvalleythumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\floodedvalleyimp.ahk
		}

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\bloodypuddlesthumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\bloodypuddlesimp.ahk
		}

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\workshopthumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\workshopimp.ahk
		}

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\quadthumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\quadimp.ahk
		}

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\darkcastlethumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\darkcastleimp.ahk
		}

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\muddypuddlesthumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\muddypuddlesimp.ahk
		}

imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\ouchthumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\ouchimp.ahk
		}
imagesearch, a, b, x-500, y-300, x, y+300, *50 .\assets\trickytracksthumb.png
	if (ErrorLevel = 0)
		{
		nomapfound := False
		click, %a% %b%
		impoppable()
		Run .\mapscripts\trickytracksimp.ahk
		}

if nomapfound {
	WinHide, InstaCounter
	Click, 1453, 1292
	sleep 200
	Click, 1784, 1296
	sleep 200
	Click, 1928, 751
	sleep 200
	impoppable()
	Run .\mapscripts\floodedvalleyimp.ahk
}
else {
WinShow, InstaCounter
}
UpdateStatus("!UNLOCK")

;=========================Safeguards======================================================================================

loop
{
	sleep 500
	resetfailsafe()
	;activatedruidabilityclosed() THEY MADE THE ABILITY A PASSIVE
	;activatedruidabilityopened() THEY MADE THE ABILITY A PASSIVE
	levelup()
}

=::ExitApp

