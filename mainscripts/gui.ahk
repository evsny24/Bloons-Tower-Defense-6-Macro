CoordMode, Pixel, Screen
#SingleInstance, Ignore
#Persistent

OnMessage(0x4A, "Receive_WM_COPYDATA")

Gui, Status: +AlwaysOnTop +ToolWindow +E0x20			;GUI for the status of current actions
Gui, Status:Font, s18, consolas
Gui, Status:Add, Text, vStatusText w290 h90, Ready
Gui, Status:Show, x2207 y25 w300 h100, ScriptStatus

global StatusLocked := false
GuiControl,, StatusText, % "Current Action: Ready"

global rare := 0
global epic := 0
global leg := 0

Gui, Counter: +AlwaysOnTop +ToolWindow +E0x20			;GUI for the insta monkey counter
Gui, Counter:Font, s18, consolas
Gui, Counter:Add, Text, vInstaCounter w220 h150, Ready
Gui, Counter:Show, x2307 y400 w220 h150, InstaCounter

UpdateInstaCounter()

Receive_WM_COPYDATA(wParam, lParam)
{
	global StatusLocked, rare, epic, leg
	str := NumGet(lParam + A_PtrSize*2, "UPtr")
   	update := StrGet(str)
	if (update = "!LOCK")
   		{
       		StatusLocked := true
       		return
    		}
	else if (update = "!UNLOCK")
    		{
        	StatusLocked := false
        	return
    		}
	else if (update = "!addrare")
    		{
        	rare++
		UpdateInstaCounter()
        	return
    		}
	else if (update = "!addepic")
    		{
        	epic++
		UpdateInstaCounter()
        	return
    		}
	else if (update = "!addleg")
    		{
        	leg++
		UpdateInstaCounter()
        	return
    		}
	if (StatusLocked)
		return
   	GuiControl, Status:, StatusText, % "Current Action: " update
	FileDelete, .\textfiles\status_current.txt
    	FileAppend, %update%, .\textfiles\status_current.txt
}
UpdateInstaCounter()
{
	global rare, epic, leg
	display := "Insta Counter" "`n"
		. "Leg: " leg "`n"
		. "Epic: " epic "`n"
		. "Rare: " rare
	GuiControl, Counter:, InstaCounter, %display%
}
-::ExitApp