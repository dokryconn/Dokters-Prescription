/*
________________  _____  _____  _   __ _____  _____ ______  _  _____                                
;;;;;;;;;;;;;;;; |  _  \|  _  || | / /|_   _||  ___|| ___ \( )/  ___| ;;;;;;;;;;;;;;;                    
;;;;;;;;;;;;;;;; | | | || | | || |/ /   | |  | |__  | |_/ /|/ \ `--.  ;;;;;;;;;;;;;;;                   
;;;;;;;;;;;;;;;; | | | || | | ||    \   | |  |  __| |    /     `--. \ ;;;;;;;;;;;;;;;                    
;;;;;;;;;;;;;;;; | |/ / \ \_/ /| |\  \  | |  | |___ | |\ \    /\__/ / ;;;;;;;;;;;;;;;                    
;;;;;;;;;;;;;;;; |___/   \___/ \_| \_/  \_/  \____/ \_| \_|   \____/  ;;;;;;;;;;;;;;;                    
______ ______  _____  _____  _____ ______  _____ ______  _____  _____  _____  _   _ 
| ___ \| ___ \|  ___|/  ___|/  __ \| ___ \|_   _|| ___ \|_   _||_   _||  _  || \ | |
| |_/ /| |_/ /| |__  \ `--. | /  \/| |_/ /  | |  | |_/ /  | |    | |  | | | ||  \| |
|  __/ |    / |  __|  `--. \| |    |    /   | |  |  __/   | |    | |  | | | || . ` |
| |    | |\ \ | |___ /\__/ /| \__/\| |\ \  _| |_ | |      | |   _| |_ \ \_/ /| |\  |
\_|    \_| \_|\____/ \____/  \____/\_| \_| \___/ \_|      \_/   \___/  \___/ \_| \_/


LAST UPDATED: 
10/31/2020
6:37p EST
	- Dokter RyConn

;				MODIFIER KEY LEGEND FOR HOTKEYS
;
;				^ = CONTROL KEY
;				! = ALT KEY
;				# = WINDOWS KEY
;				+ = SHIFT KEY
	
*/
/*****************************************************************************************************************************************************************************
;
;	1.	"DOKTER'S PRESCRIPTION" SCRIPT 
;
****************************************************************************************************************************************************************************
*/
/*****************************************************************************************************************************************************************************
;	1.1	SCRIPT RULES
****************************************************************************************************************************************************************************
*/
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.	

#SingleInstance, force		; ONLY LAUNCH 1 INSTANCE OF THIS SCRIPT AT A TIME.
SetTitleMatchMode, 2 		; A WINDOW'S TITLE CAN CONTAIN WINTITLE ANYWHERE INSIDE IT TO BE A MATCH.
SetKeyDelay, 10, 10			; THIS CONTROLS THE LENGTH OF TIME THAT A HOTKEY IS PRESSED BEFORE IT IS RELEASED.
/*****************************************************************************************************************************************************************************
;	1.4 SETS UP TRAY MANU ITEMS AND TOGGLES DIFFERENT ICONS FOR WHEN THE SCRIPT IS ACTIVE VS. SUSPENDED VS. PAUSED
****************************************************************************************************************************************************************************
*/
Menu, Tray, NoStandard
Menu, Tray, Tip, Dok's Rx Pad`nYou are driving the UFO!
Menu, Tray, Add, &Reload Script,ContextMenu
Menu, Tray, Add, &Edit Script, ContextMenu
Menu, Tray, Add, &Suspend Keys, ContextMenu
Menu, Tray, Default, &Suspend Keys
Menu, Tray, Add,&Pause Script, ContextMenu
Menu,Tray, Add, Unplug, ContextMenu
Menu, Tray, Icon, %A_ScriptDir%\icons\DokRxON.ico
return

ContextMenu:
If (A_ThisMenuItem="&Reload Script")
  Reload

If (A_ThisMenuItem="&Edit Script")
{
  Run,notepad.exe %A_ScriptFullPath% ; change notepad.exe if you use a different text editor
  Return
}

If (A_ThisMenuItem="&Suspend Keys")
{
  Gosub,SuspendHotkeysToggle
  Return
}

If (A_ThisMenuItem="&Pause Script")
{
  Gosub,PauseScriptToggle
  Return
}

If (A_ThisMenuItem="Unplug")
  ExitApp

PauseScriptToggle:
If (A_IsPaused)
{
  Pause, Toggle
  If (A_IsSuspended)
    Menu,Tray,Icon,%A_WorkingDir%\icons\DokRxSUSPENDED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\icons\DokRxON.ico
  Menu,Tray,Uncheck,&Pause Script
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\icons\DokRxPAUSED.ico,,1
  Menu,Tray,Check,&Pause Script
  Pause,On
}
Return

SuspendHotkeysToggle:
If (A_IsSuspended)
{
  Suspend,Off
  If (A_IsPaused)
    Menu,Tray,Icon,%A_WorkingDir%\icons\DokRxPAUSED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\icons\DokRxON.ico
  Menu,Tray,Uncheck,&Suspend Keys
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\icons\DokRxSUSPENDED.ico,,1
  Menu,Tray,Check,&Suspend Keys
  Suspend,On
}
return
/*****************************************************************************************************************************************************************************
;	1.5		LAUNCH ADDITIONAL SCRIPTS
****************************************************************************************************************************************************************************
*/
;	LAUNCH "ABLETON TAKEOVER" SCRIPT		;	Once running, this script can be closed with [CTRL+ALT+SHIFT+DEL]
;
;	[CTRL+ALT++SHIFT+A]
;
^!+a::run, %A_WorkingDir%\resources\Ableton Takeover.exe


;	LAUNCH "POWER & SLEEP HOTKEYS" SCRIPT	;	Once running, this script can be closed with [CTRL+ALT+SHIFT+HOME]
;
;	[CTRL+ALT+SHIFT+P]
;
^!+p::run, %A_WorkingDir%\resources\Power & Sleep Hotkeys.exe


;	LAUNCH "RESEARCH CHEMICALS" SCRIPT		;	Once running, this script can be closed with [CTRL+ALT+SHIFT+PG DOWN]
;
;	[CTRL+ALT+SHIFT+R]
;
^!+r::run, %A_WorkingDir%\resources\Research Chemicals.ahk
;
/***********************************************************************************************
;	1.6 	DOKTER'S PRESCRIPTION SCRIPT CONTROL HOTKEYS
/***********************************************************************************************
*/
;	SUSPEND HOTKEYS FOR DOKTER'S PRESCRIPTION SCRIPT
;
;	[CTRL+ALT+SHIFT+PAUSE]
;
^!+CtrlBreak::
Suspend,Permit
Gosub,SuspendHotkeysToggle
Return


;	RELOAD SCRIPT
;
;	[WIN+HOME]
;
#Home::Reload



;	SAVE SCRIPT AND RELOAD SCRIPT
;
;	[CTRL+S]
;
 #IfWinActive Dok's Rx (Raw).ahk	; !!~~~	INSERT SCRIPT NAME HERE AND IN THE MSGBOX BELOW	~~~!!	
^s:: 										; [CTRL+S] (SAVE)
	Send ^s 								
	MsgBox, 0, Confirmation Message, Dok's Rx (Raw)`n`nRELOADING...., .3	; !!~~~	INSERT SCRIPT NAME HERE	~~~!! ; ...the ".3" represents a .3 sec timeout for the message
		IfMsgBox, OK
			return
	Reload									; THIS STEP RELOADS THE SAVED SCRIPT
	return
#IfWinActive


;	EXIT SCRIPT
;
;	[CTRL+ALT+SHIFT+END]
;
	^!+End::exitapp
;
/*****************************************************************************************************************************************************************************
;
;	2.	GLOBAL PC SYSTEM FUNCTIONS
;
****************************************************************************************************************************************************************************
*/
/***********************************************************************************************
;	2.1		GLOBAL WINDOWS HOTKEYS	(GLOBAL PC SYSTEM)
/***********************************************************************************************
*/
;	REASSIGN "MENU KEY" ON KEYBOARD TO TRIGGER THE WINDOWS KEY INSTEAD
;
;	[MENU KEY]
;
AppsKey::LWin



;	[WIN+TILDE KEY]						
;
;	LAUNCH "FILE EXPLORER"		;  ONLY LAUNCHES (NO TOGGLING)
#`::run, explorer.exe "C:\Users"



;	SCREENSHOT	; (Launches Windows Snip and Sketch Screenshot tool)
;
;	[PrtSc]
;
PrintScreen::#+s


	
;	QUIT PROGRAM
;
;	[WIN+Q]
;
#q::Send !{F4}


	
;	CLOSE WINDOW / TAB
;
;	[WIN+W]
;
#w::Send ^w


;	MINIMIZE WINDOW
;
;	[WIN+DOWN]
;
#Down::WinMinimize, A

	
;	MAXIMIZE WINDOW
;
;	[WIN+UP]
;
#Up::WinMaximize, A



;	CONVERT SELECTED TEXT TO UPPERCASE	; COPIES HIGHLIGHTED TEXT TO CLIPBOARD, ERASE TEXT, AND PASTE CLIPBOARD WITH CAPS ON
;
;	[CTRL+SHIFT+U]
;
^+u::                                                                 
 Send ^c
 Sleep 10
 Stringupper Clipboard, Clipboard
 Send %Clipboard%
return


;	CONVERT SELECTED TEXT TO LOWERCASE	; COPIES  HIGHLIGHTED TEXT TO CLIPBOARD, ERASE TEXT, AND PASTE CLIPBOARD WITH CAPS OFF
;
;	[CTRL+SHIFT+L]
;
^+l::
 Send ^c
 Sleep 10
 Stringlower Clipboard, Clipboard
 Send %Clipboard%
return


;	INVERT UPPER/LOWER CASE		; COPIES HIGHLIGHTED TEXT TO CLIPBOARD, ERASE TEXT, AND PASTE CLIPBOARD WITH CAPS LOCK INVERTED FOR EACH CHARACTER
;
;	[CTRL+SHIFT+I]
;
^+i::
 Send ^c
 Sleep 10
 Lab_Invert_Char_Out:= ""
 Loop % Strlen(Clipboard) {
    Lab_Invert_Char:= Substr(Clipboard, A_Index, 1)
    if Lab_Invert_Char is upper
       Lab_Invert_Char_Out:= Lab_Invert_Char_Out Chr(Asc(Lab_Invert_Char) + 32)
    else if Lab_Invert_Char is lower
       Lab_Invert_Char_Out:= Lab_Invert_Char_Out Chr(Asc(Lab_Invert_Char) - 32)
    else
       Lab_Invert_Char_Out:= Lab_Invert_Char_Out Lab_Invert_Char
 }
 Send %Lab_Invert_Char_Out%
return
;
/***********************************************************************************************
;	2.2		MEDIA KEYBOARD BUTTON HOTKEYS		(GLOBAL PC SYSTEM)
/***********************************************************************************************
*/
;	PLAY / PAUSE - PC MEDIA
;
;	[ALT+P]
;
!p::Send, {Media_Play_Pause}


;	PLAY / PAUSE - PC MEDIA
;
;	[ ALT+. ]
;
!.::Send, {Media_Next}


;	PREVIOUS TRACK - PC MEDIA
;
;	[ ALT+, ]
;
!,::Send {Media_Prev}


;	MUTE SYSTEM SOUND - PC MEDIA
;
;	[ALT+M)
;
!m::send {Volume_Mute}


;	VOLUME UP - PC MEDIA
;
;	[ALT+=]
;
!=::Send {Volume_Up}


;	VOLUME DOWN - PC MEDIA
;
;	[ALT+-]
;
!-::Send {Volume_Down}
;
/*****************************************************************************************************************************************************************************
;	2.3		HOTSTRINGS (AUTO TYPING SHORTCUTS)
****************************************************************************************************************************************************************************
*/

/*

;	EMAIL ADDRESS HOTSTRING SHORTCUTS		[abc.]		 TURNS "abc." INTO "YOUR_EMAIL_ADDRESS@EMAIL.com"
::abc.::YOUR_EMAIL_ADDRESS@EMAIL.com

;	USERNAME HOTSTRING SHORTCUTS			[xyz.]		TURNS "xyz." INTO "YOUR_USERNAME"
::xyz.::YOUR_USERNAME


;	OTHER HOTSTRING SHORTCUTS				[ahk.]		TURNS ".ahk" INTO "Autohotkey"
::ahk.::Autohotkey
;

*/

/*****************************************************************************************************************************************************************************
;
;	3.	PROGRAM SPECIFIC FUNCTIONS 	;	This includes {#IfWinActive} to apply while certain program windows are active
;
****************************************************************************************************************************************************************************
*/
; ****************************************************************************************************************************************************************************
;
;	3.1		ABLETON LIVE 10 SUITE FUNCTIONS
;
; ****************************************************************************************************************************************************************************
 #IfWinActive ahk_exe Ableton Live 10 Suite.exe
/***********************************************************************************************
;	3.1.1		GENERAL FUNCTIONS	(ABLETON LIVE)
/***********************************************************************************************
*/
;	RENAME		
;
;	[ALT+R]
;
!r::Send ^r


;	SPLIT CLIP	
;
;	[ALT+X]
;
!x::Send ^e


;	FREEZE TRACK	
;
;	[WIN+0]	
;
#0::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Enter}


;	FLATTEN TRACK	
;
;	[WIN+-]
;
#-::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Enter}


;	INSERT TIME
;
;	[ALT+INSERT]
;
!Insert::Send ^i


;	DELETE TIME
;
;	[ALT+DELETE]
;
!Delete::Send ^+{Delete}


;	CUT TIME
;
;	[ALT+HOME]
;
!Home::Send ^+x


;	PASTE TIME
;
;	[ALT+PAGE DOWN]
;
!PGDN::Send ^+v


;	DUPLICATE TIME
;
;	[ALT+END]
;
!End::Send ^+d


;	INSERT TIME SIGNATURE CHANGE	
;
;	{ALT+SHIFT+INSERT]
;
!+Insert::Send !c{Up}{Up}{Up}{Up}{Enter}


;	ADD LOCATOR	MARKER
;
;	[ALT+SHIFT+L]
;
!+l::Send !c{Up}{Up}{Up}{Enter}


;	CHOP (SLICE) TO NEW MIDI TRACK
;
;	[CTRL+ALT+C]
;
^!c::Send !c{Down}{Down}{Down}{Down}{Down}{Down}{Enter}


;	CONVERT HARMONY TO MIDI TRACK
;
;	 [CTRL+ALT+H]
;
^!h::Send !c{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}

	
;	CONVERT MELODY TO MIDI TRACK
;
;	[CTRL+ALT+M]
;
^!m::Send !c{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}

	
;	CONVERT DRUMS TO MIDI TRACK
;
;	[CTRL+ALT+D]
;
^!d::Send !c{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}
;	
/***********************************************************************************************
;	3.1.2		VIEW TOGGLING 		(ABLETON LIVE)
/***********************************************************************************************
*/
;	HIDE/SHOW INFO VIEW	(HELP)
;
;	[/]
;
/::+/


;	DETAIL VIEW
;
;	[ALT+D]
;
!d::
	BlockInput, On
	Send ^!l
	BlockInput, Off
	return


;	BROWSER
;
;	[ALT+S]
;
!s::
	BlockInput, On
	Send ^!b
	BlockInput, Off


;	OVERVIEW / ZOOMING
;
;	[ALT+Z]
;
!z::
	BlockInput, On
	Send ^!o
	BlockInput, Off


;	VIEW INPUT / OUTPUT
;
;	[ALT+SHIFT+I]
;
!+i::Send ^!i


;	VIEW RETURNS
;
;	[ALT+SHIFT+R]
;
!+r::Send ^!r

	
;	VIEW SENDS
;
;	[ALT+SHIFT+S]
;
!+s::Send ^!s	


;	VIEW MIXER
;
;	[ALT+SHIFT+M]
;
!+m::Send ^!m


;	VIEW DEVICE SLOTS
;
;	[ALT+SHIFT+D]
;
!+d::Send !v{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Enter}


;	FILE MANAGER
;
;	[ALT+M]
;
!m::Send !v{Down}{Down}{Down}{Down}{Enter}



;	VIEW GROOVE POOL
;
;	[ALT+G]
;
!g::Send ^!g

	
;	OPEN SECOND WINDOW
;
;	[ALT+N]
!n::Send ^+W
;
/***********************************************************************************************
;	3.1.3		QUANTIZATION		 (ABLETON LIVE)
/***********************************************************************************************
*/
;	QUANTIZE
;
;	[ALT+Q]
;
!q::^u



;	QUANTIZE SETTINGS MENU
;
;	[ALT+W]
;
!w::^+u


;	"NONE" - GLOBAL QUANTIZATION
;
;	[CTRL+ALT+0]
;
^!Numpad0::
	BlockInput, On
	Send ^+{Numpad0}
	BlockInput, Off
	return


;	"1 BAR" - GLOBAL QUANTIZATION
;
;	[CTRL+ALT+1]
;
^!Numpad1::
	BlockInput, On
	Send ^+{Numpad9}
	BlockInput, Off
	return


;	RECORD QUANTIZATION	OFF
;
;	[CTRL+SHIFT+0]
;
^+Numpad0::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Right}{Enter}

	
;	1/4 NOTE RECORD QUANTIZATION
;
;	[CTRL+SHIFT+4]
;
^+Numpad4::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Right}{Down}{Enter}


;	1/8 NOTE RECORD QUANTIZATION
;
;	[CTRL+SHIFT+8]
;
^+Numpad8::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Right}{Down}{Down}{Enter}
	
	
;	1/8 NOTE TRIPLETS RECORD QUANTIZATION
;
;	[CTRL+SHIFT+1]
;
^+Numpad1::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Right}{Down}{Down}{Down}{Enter}
	
	
;	1/8 NOTE AND TRIPLETS RECORD QUANTIZATION
;
;	[CTRL+SHIFT+2]
;
^+Numpad2::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Right}{Down}{Down}{Down}{Down}{Enter}


;	1/16 NOTE RECORD QUANTIZATION
;
;	[CTRL+SHIFT+6]
;
^+Numpad6::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Right}{Down}{Down}{Down}{Down}{Down}{Enter}


;	1/16 NOTE TRIPLETS RECORD QUANTIZATION
;
;	[CTRL+SHIFT+3]
;
^+Numpad3::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Right}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}
	
	
;	1/16 NOTE AND TRIPLETS RECORD QUANTIZATION
;
;	[CTRL+SHIFT+7]
;
^+Numpad7::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Right}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}
	

;	1/32 NOTE RECORD QUANTIZATION
;
;	[CTRL+SHIFT+9]
;
^+Numpad9::Send !e{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Right}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}
;	
/***********************************************************************************************
;	3.1.4		TRANSPORT 			(ABLETON LIVE)
/***********************************************************************************************
*/
:	LOOP
;
;	[ALT+L]
;
!l::Send ^l


;	FOLLOW ARRANGEMENT
;
;	[ALT+F]
;
!f::Send ^+f


;	CAPTURE MIDI PHRASE
;
;	ALT+] 
;
!]::Send ^+c
;
/*
     _    ____      _ _   _ ____ _____   _____ ___  ____        
    / \  |  _ \    | | | | / ___|_   _| |  ___/ _ \|  _ \       
   / _ \ | | | |_  | | | | \___ \ | |   | |_ | | | | |_) |      
  / ___ \| |_| | |_| | |_| |___) || |   |  _|| |_| |  _ <       
 /_/  _\_\____/ \___/_\___/|____/ |_|   |_|_  \___/|_| \_\      
 \ \ / / _ \| | | |  _ \   / _ \ \      / / \ | |               
  \ V / | | | | | | |_) | | | | \ \ /\ / /|  \| |               
   | || |_| | |_| |  _ <  | |_| |\ V  V / | |\  |               
  _|_| \___/_\___/|_|_\_\ _\___/_ \_/\_/  |_| \_|               
 / ___| / ___|  _ \| ____| ____| \ | |                          
 \___ \| |   | |_) |  _| |  _| |  \| |                          
  ___) | |___|  _ <| |___| |___| |\  |                          
 |____/ \____|_|_\_\_____|_____|_| \_|____ ___ ___  _   _ _     
 |  _ \| ____/ ___| / _ \| |  | | | |_   _|_ _/ _ \| \ | | |  _ 
 | |_) |  _| \___ \| | | | |  | | | | | |  | | | | |  \| | | (_)
 |  _ <| |___ ___) | |_| | |__| |_| | | |  | | |_| | |\  |_|  _ 
 |_| \_\_____|____/ \___/|_____\___/  |_| |___\___/|_| \_(_) (_)
                                                                
ADJUST FOR YOUR OWN SCREEN RESOLUTION:

THE MOUSE CLICK HOTKEYS BELOW ARE SPECIFICALLY SETUP FOR A 1280 x 720 SCREEN RESOLUTION 
(THIS WILL NEED TO BE CHANGED IF YOUR SCREEN RESOLUTION IS DIFFERENT OR IF ABLETON IS IN FULLSCREEN MODE)

TO EDIT THESE MOUSE CLICK HOTKEYS:
1.) PRESS [CTRL+ALT+SHIFT+C] WHILE RUNNING THE "Research Chemicals.AHK" SCRIPT TO IDENTIFY A SPECIFIC MOUSE COORDINATE POSITION TO EDIT THESE HOTKEYS
2.) NOTE THE MOUSE COORDINATES FOR THE X AND Y POSITIONS THAT ARE DISPLAYED IN THE POP-UP MESSAGE BOX
3.) INSERT EACH SPECIFIC SET OF COORDINATES INTO THE "MouseClick" line of code for each MOUSE CLICK HOTKEY LISTED BELOW
4.) YOU HAVE SUCCESSFULLY CUSTOMIZED THE MOUSE CLICK HOTKEYS FOR YOUR OWN SCREEN RESOLUTION. YOU'RE DONE!

*/

/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	MIDI ARRANGEMENT OVERDUB
;
;	[ALT+O]
;
!o::
	MouseGetPos, StartX, StartY
	MouseClick, left,  581, 67
	MouseMove, StartX, StartY
	return
*/



/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	AUTOMATION ARM
;
;	[ALT+P]
;
!p::
	MouseGetPos, StartX, StartY
	MouseClick, left,  601, 67
	MouseMove, StartX, StartY
	return
*/



/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	RE-ENABLE AUTOMATION
;
;	ALT+[
;
![::
	MouseGetPos, StartX, StartY
	MouseClick, left,  619, 67
	MouseMove, StartX, StartY
	return
*/



/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	SESSION RECORD BUTTON
;
;	[ALT+\]
;
!\::
	MouseGetPos, StartX, StartY
	MouseClick, left,  658, 67
	MouseMove, StartX, StartY
	return
*/

#IfWinActive
;
; ****************************************************************************************************************************************************************************
;
;	3.2	SPOTIFY 
;
; ****************************************************************************************************************************************************************************
 #IfWinActive ahk_exe Spotify.exe
	
;	SPOTIFY PLAY / PAUSE
;
;	[ALT+P]
;
!p::Send {Space}



;	SPOTIFY PREV TRACK
;
;	[CTRL+,]
;
!,::Send ^{Left}



;	SPOTIFY NEXT TRACK
;
;	[CTRL+.]
;
!.::Send ^{Right}



;	PRIVATE SESSION (incognito mode)
;
;	[ALT+I]
;
!i::
	BlockInput, On
	Sleep 420
	Send, !f
	Sleep, 100
	Send, {Down}{Down}{Down}{Enter}
	BlockInput, Off
	return


/*
     _    ____      _ _   _ ____ _____   _____ ___  ____        
    / \  |  _ \    | | | | / ___|_   _| |  ___/ _ \|  _ \       
   / _ \ | | | |_  | | | | \___ \ | |   | |_ | | | | |_) |      
  / ___ \| |_| | |_| | |_| |___) || |   |  _|| |_| |  _ <       
 /_/  _\_\____/ \___/_\___/|____/ |_|   |_|_  \___/|_| \_\      
 \ \ / / _ \| | | |  _ \   / _ \ \      / / \ | |               
  \ V / | | | | | | |_) | | | | \ \ /\ / /|  \| |               
   | || |_| | |_| |  _ <  | |_| |\ V  V / | |\  |               
  _|_| \___/_\___/|_|_\_\ _\___/_ \_/\_/  |_| \_|               
 / ___| / ___|  _ \| ____| ____| \ | |                          
 \___ \| |   | |_) |  _| |  _| |  \| |                          
  ___) | |___|  _ <| |___| |___| |\  |                          
 |____/ \____|_|_\_\_____|_____|_| \_|____ ___ ___  _   _ _     
 |  _ \| ____/ ___| / _ \| |  | | | |_   _|_ _/ _ \| \ | | |  _ 
 | |_) |  _| \___ \| | | | |  | | | | | |  | | | | |  \| | | (_)
 |  _ <| |___ ___) | |_| | |__| |_| | | |  | | |_| | |\  |_|  _ 
 |_| \_\_____|____/ \___/|_____\___/  |_| |___\___/|_| \_(_) (_)
                                                                
ADJUST FOR YOUR OWN SCREEN RESOLUTION:

THE MOUSE CLICK HOTKEYS BELOW ARE SPECIFICALLY SETUP FOR A 1280 x 720 SCREEN RESOLUTION 
(THIS WILL NEED TO BE CHANGED IF YOUR SCREEN RESOLUTION IS DIFFERENT OR IF THE SPOTIFY WINDOW IS NOT ZOOM SCALED TO 0%)

TO EDIT THESE MOUSE CLICK HOTKEYS:
1.) PRESS [CTRL+ALT+SHIFT+C] WHILE RUNNING THE "Research Chemicals.AHK" SCRIPT TO IDENTIFY A SPECIFIC MOUSE COORDINATE POSITION TO EDIT THESE HOTKEYS
2.) NOTE THE MOUSE COORDINATES FOR THE X AND Y POSITIONS THAT ARE DISPLAYED IN THE POP-UP MESSAGE BOX
3.) INSERT EACH SPECIFIC SET OF COORDINATES INTO THE "MouseClick" line of code for each MOUSE CLICK HOTKEY LISTED BELOW
4.) YOU HAVE SUCCESSFULLY CUSTOMIZED THE MOUSE CLICK HOTKEYS FOR YOUR OWN SCREEN RESOLUTION. YOU'RE DONE!

*/

/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	HOME
;
;	[ALT+H]
;
!h::
	MouseGetPos, StartX, StartY
	MouseClick, left,  116, 82
	Sleep, 100
	MouseMove, StartX, StartY
	return
*/



/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	BROWSE
;
;	[ALT+B]
;
!b::
	MouseGetPos, StartX, StartY
	MouseClick, left,  122, 121
	Sleep, 100
	MouseMove, StartX, StartY
	return
*/



/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	RADIO
;
;	[ALT+B]
;
!r::
	MouseGetPos, StartX, StartY
	MouseClick, left,  113, 152
	Sleep, 100
	MouseMove, StartX, StartY
	return
*/



/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	SKIP 15 SECONDS BACK
;
;	[ALT+;]
;
!;::
	MouseGetPos, StartX, StartY
	MouseClick, left,  550, 680
	Sleep, 100
	MouseMove, StartX, StartY
	return
*/



/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	SKIP 15 SECONDS FORWARD
;
;	[ALT+']
;
!'::
	MouseGetPos, StartX, StartY
	MouseClick, left,  746, 680
	Sleep, 100
	MouseMove, StartX, StartY
	return
*/
	
#IfWinActive
;
; ****************************************************************************************************************************************************************************
;
;	3.3	CHROME BROWSER
;
; ****************************************************************************************************************************************************************************
#IfWinActive ahk_exe chrome.exe

;	NEW WINDOW 
;
;	[ALT+N]
;
!n::Send ^n



;	NEW TAB
;
;	[ALT+T]
;
!t::Send ^t



;	REFRESH BROWSER
;
;	[ALT+R]
;
!r::Send ^r



;	CLOSE BROWSER TAB
;
;	[ALT+W]
;
!w::Send ^w



;	INCOGNITO WINDOW (incognito mode)
;
;	[ALT+I]
;
!i::Send ^+n

#IfWinActive
;
; ****************************************************************************************************************************************************************************
;
;	3.4	BRAVE BROWSER 
;
; ****************************************************************************************************************************************************************************
#IfWinActive ahk_exe brave.exe

;	NEW WINDOW 
;
;	[ALT+N]
;
!n::Send ^n


;	NEW TAB 
;
;	[ALT+T]
;
!t::Send ^t


;	REFRESH BROWSER
;
;	[ALT+R]
;
!r::Send ^r
 

;	CLOSE BROWSER TAB
;
;	[ALT+W]
;
!w::Send ^w


;	INCOGNITO WINDOW ;	OPENS NEW INCOGNITO WINDOW IN BRAVE BROWSER
;
;	[ALT+I]
;
!i::Send ^+n


#IfWinActive
;
/*****************************************************************************************************************************************************************************
;
;	4.	RUN / TOGGLE PROGRAMS WITH [ WIN+ ]	0-9 
;
****************************************************************************************************************************************************************************
*/
/*
     _    ____      _ _   _ ____ _____   _____ ___  ____    
    / \  |  _ \    | | | | / ___|_   _| |  ___/ _ \|  _ \   
   / _ \ | | | |_  | | | | \___ \ | |   | |_ | | | | |_) |  
  / ___ \| |_| | |_| | |_| |___) || |   |  _|| |_| |  _ <   
 /_/  _\_\____/ \___/_\___/|____/ |_|   |_|_  \___/|_| \_\  
 \ \ / / _ \| | | |  _ \   / _ \ \      / / \ | |           
  \ V / | | | | | | |_) | | | | \ \ /\ / /|  \| |           
   | || |_| | |_| |  _ <  | |_| |\ V  V / | |\  |           
  _|_| \___/ \___/|_|_\_\ _\___/  \_/\_/ _|_|_\_|___  _     
 |  _ \|  _ \ / _ \ / ___|  _ \    / \  |  \/  / ___|| |  _ 
 | |_) | |_) | | | | |  _| |_) |  / _ \ | |\/| \___ \| | (_)
 |  __/|  _ <| |_| | |_| |  _ <  / ___ \| |  | |___) |_|  _ 
 |_|   |_| \_\\___/ \____|_| \_\/_/   \_\_|  |_|____/(_) (_)
                                                            

PLEASE READ - ADJUST FOR YOUR OWN PROGRAMS: 
1.) Remove the /* and */ comment block brackets for each block of code that you would like to activate below
2.)	Update each "INSERT_APP_NAME_HERE" template field with your chosen program title (the specfic word displayed in the program window's title bar)
3.) Update each "INSERT_APP_FILEPATH_HERE" template field with the file path of your program (Identify the program file name by viewing the "Properties" of the program file)
4.) You're done! Now [WIN+] number keys will launch/toggle your program.

NOTE: PROGRAMS THAT WERE INSTALLED BY "Microsoft Store" REQUIRE CREATED SHORTCUTS TO BE MOVED WITHIN THE FOLDER:
"Dok's Rx Cabinet\Dok's Rx Pad\App Launch Shortcuts"

THE FILEPATH FOR THESE SHORTCUTS CAN BE INDICATED BELOW AS:
"%A_WorkingDir%\Dok's Rx Pad\App Launch Shortcuts\INSERT_SHORTCUT_NAME_HERE"
Example: %A_WorkingDir%\Dok's Rx Pad\App Launch Shortcuts\MicrosoftToDo

YOU CAN INDICATE ANY OTHER PROGRAMS USING THE NORMAL FILE PATH WITHOUT CREATING A SHORTCUT:
Example: C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
*/

/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+1]
;
#1::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+2]
;
#2::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/
	
	
/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+3]
;
#3::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/
	
	
/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+4]
;
#4::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/
	
	
/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+5]
;
#5::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/
	
	
/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+6]
;
#6::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/
	
	
/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+7]
;
#7::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/
	
	
/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+8]
;
#8::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/

/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+9]
;
#9::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/
	
/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+0]
;
#0::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 1]
;
#Numpad1::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{	
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 2]
;
#Numpad2::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{	
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 3]
;
#Numpad3::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{	
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 4]
;
#Numpad4::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{	
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 5]
;
#Numpad5::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{	
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 6]
;
#Numpad6::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{	
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 7]
;
#Numpad7::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{	
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 8]
;
#Numpad8::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{	
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 9]
;
#Numpad9::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{	
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/
;
/*****************************************************************************************************************************************************************************
;
;	5.	RUN / TOGGLE PROGRAMS WITH [ WIN+SHIFT+ ] A-Z 
;
****************************************************************************************************************************************************************************
*/
/*
     _    ____      _ _   _ ____ _____   _____ ___  ____    
    / \  |  _ \    | | | | / ___|_   _| |  ___/ _ \|  _ \   
   / _ \ | | | |_  | | | | \___ \ | |   | |_ | | | | |_) |  
  / ___ \| |_| | |_| | |_| |___) || |   |  _|| |_| |  _ <   
 /_/  _\_\____/ \___/_\___/|____/ |_|   |_|_  \___/|_| \_\  
 \ \ / / _ \| | | |  _ \   / _ \ \      / / \ | |           
  \ V / | | | | | | |_) | | | | \ \ /\ / /|  \| |           
   | || |_| | |_| |  _ <  | |_| |\ V  V / | |\  |           
  _|_| \___/ \___/|_|_\_\ _\___/  \_/\_/ _|_|_\_|___  _     
 |  _ \|  _ \ / _ \ / ___|  _ \    / \  |  \/  / ___|| |  _ 
 | |_) | |_) | | | | |  _| |_) |  / _ \ | |\/| \___ \| | (_)
 |  __/|  _ <| |_| | |_| |  _ <  / ___ \| |  | |___) |_|  _ 
 |_|   |_| \_\\___/ \____|_| \_\/_/   \_\_|  |_|____/(_) (_)
                                                            
PLEASE READ - ADJUST FOR YOUR OWN PROGRAMS: 
1.) Remove the /* and */ comment block brackets for each block of code that you would like to activate below
2.)	Update each "INSERT_APP_NAME_HERE" template field with your chosen program title (the specfic word displayed in the program window's title bar)
3.) Update each "INSERT_APP_FILEPATH_HERE" template field with the file path of your program (Identify the program file name by viewing the "Properties" of the program file)
4.) You're done! Now [WIN+] number keys will launch/toggle your program.

NOTE: PROGRAMS THAT WERE INSTALLED BY "Microsoft Store" REQUIRE CREATED SHORTCUTS TO BE MOVED WITHIN THE FOLDER:
"Dok's Rx Cabinet\Dok's Rx Pad\App Launch Shortcuts"

THE FILEPATH FOR THESE SHORTCUTS CAN BE INDICATED BELOW AS:
"%A_WorkingDir%\Dok's Rx Pad\App Launch Shortcuts\INSERT_SHORTCUT_NAME_HERE"
Example: %A_WorkingDir%\Dok's Rx Pad\App Launch Shortcuts\MicrosoftToDo

YOU CAN INDICATE ANY OTHER PROGRAMS USING THE NORMAL FILE PATH WITHOUT CREATING A SHORTCUT:
Example: C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
*/

/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+A]
;
#+a::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+B]
;
#+b::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+C]
;
#+c::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+D]
;
#+d::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+E]
;
#+e::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+F]
;
#+f::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+G]
;
#+g::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+H]
;
#+h::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+I]
;
#+i::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+J]
;
#+j::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+K]
;
#+k::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+L]
;
#+l::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+M]
;
#+m::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+N]
;
#+n::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+O]
;
#+o::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+P]
;
#+p::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+Q]
;
#+q::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/

/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+R]
;
#+r::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+S]
;
#+s::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+T]
;
#+t::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+U]
;
#+u::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+V]
;
#+v::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+W]
;
#+w::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+X]
;
#+x::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+Y]
;
#+y::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+SHIFT+Z]
;
#+z::
ifwinexist, INSERT_APP_NAME_HERE
{
ifwinactive, INSERT_APP_NAME_HERE
{
winminimize, INSERT_APP_NAME_HERE
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, INSERT_APP_NAME_HERE
exit
}
run "INSERT_APP_FILEPATH_HERE"
exit
*/


/*
END OF SCRIPT


- Dokter RyConn

https://paypal.me/DokRyConn

*/