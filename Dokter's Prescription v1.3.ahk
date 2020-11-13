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
11/12/20
6:56p EST
	- Dokter RyConn
;
;				MODIFIER KEY SYMBOL LEGEND FOR HOTKEYS
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
;	1.2 CREATING SCRIPT DIRECTORY FOLDERS
****************************************************************************************************************************************************************************
*/
;	
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet			;	CREATES THE ROOT FOLDER THAT CONTAINS THE FILES/SCRIPTS USED FOR THE COMPILED .EXE SCRIPT
;
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Dok's Rx Pad
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Dok's Rx Pad\icons
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Dok's Rx Pad\resources
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Dok's Rx Pad\resources\icons
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Dok's Rx Pad\App Launch Shortcuts
;
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Over The Counter

FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Over The Counter\Ableton Takeover
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Over The Counter\Ableton Takeover\icons

FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Over The Counter\Power & Sleep
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Over The Counter\Power & Sleep\icons
;
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Research Chemicals
FileCreateDir, %A_ScriptDir%\Dok's Rx Cabinet\Research Chemicals\icons
;
/*
THIS SETS THE %A_WorkingDir% SCRIPT VARIABLE TO THE "Dok's Rx Cabinet" FOLDER DIRECTORY THAT GETS CREATED BY THE ABOVE CODE
*/
SetWorkingDir, %A_ScriptDir%\Dok's Rx Cabinet			; THIS ASSIGNS THE VARIABLE CONTROL OF %A_WorkingDir% TO POINT TO THE FOLDER "Dok's Rx Cabinet"
;
/*****************************************************************************************************************************************************************************
;	1.3 INSTALLING ASSOCIATED SCRIPT PACKAGE FILES
****************************************************************************************************************************************************************************
*/
/***********************************************************************************************
	DOKTER'S PRESCRIPTION SCRIPT
/***********************************************************************************************
*/
;	Installs Dok's Rx Pad AHK script, icon files, `App Launch Shortcuts` folder, RxEAD ME, and Dok's Rx Guide spreadsheet:
FileInstall, Dok's Pharmacy\Dok's Rx Pad.ahk,%A_WorkingDir%\Dok's Rx Pad\Dok's Rx Pad.ahk
FileInstall, Dok's Pharmacy\DokRxON.ico,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxON.ico
Menu, Tray, Icon,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxON.ico
FileInstall, Dok's Pharmacy\DokRxSUSPENDED.ico,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxSUSPENDED.ico
FileInstall, Dok's Pharmacy\DokRxPAUSED.ico,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxPAUSED.ico
FileInstall, Dok's Pharmacy\PLACE_APP_LAUNCH_SHORTCUTS_HERE.txt,%A_WorkingDir%\Dok's Rx Pad\App Launch Shortcuts\PLACE_APP_LAUNCH_SHORTCUTS_HERE.txt
FileInstall, Dok's Pharmacy\RxEAD ME.html,%A_WorkingDir%\RxEAD ME.html
FileInstall, Dok's Pharmacy\Dok's Rx Guide.xls,%A_WorkingDir%\Dok's Rx Guide.xls

;	Installs `Dok's Rx Pad` "resources" and "icons" folders:
;
FileInstall, Dok's Pharmacy\Ableton Takeover.exe,%A_WorkingDir%\Dok's Rx Pad\resources\Ableton Takeover.exe
FileInstall, Dok's Pharmacy\Ableton Takeover README.txt,%A_WorkingDir%\Dok's Rx Pad\resources\Ableton Takeover README.txt
FileInstall, Dok's Pharmacy\AbletonTakeoverON.ico,%A_WorkingDir%\Dok's Rx Pad\resources\icons\AbletonTakeoverON.ico
FileInstall, Dok's Pharmacy\AbletonTakeoverSUSPENDED.ico,%A_WorkingDir%\Dok's Rx Pad\resources\icons\AbletonTakeoverSUSPENDED.ico
FileInstall, Dok's Pharmacy\AbletonTakeoverPAUSED.ico,%A_WorkingDir%\Dok's Rx Pad\resources\icons\AbletonTakeoverPAUSED.ico

FileInstall, Dok's Pharmacy\Power & Sleep Hotkeys.exe,%A_WorkingDir%\Dok's Rx Pad\resources\Power & Sleep Hotkeys.exe
FileInstall, Dok's Pharmacy\Power & Sleep Hotkeys README.txt,%A_WorkingDir%\Dok's Rx Pad\resources\Power & Sleep Hotkeys README.txt
FileInstall, Dok's Pharmacy\Power&SleepON.ico,%A_WorkingDir%\Dok's Rx Pad\resources\icons\Power&SleepON.ico
FileInstall, Dok's Pharmacy\Power&SleepSUSPENDED.ico,%A_WorkingDir%\Dok's Rx Pad\resources\icons\Power&SleepSUSPENDED.ico
FileInstall, Dok's Pharmacy\Power&SleepPAUSED.ico,%A_WorkingDir%\Dok's Rx Pad\resources\icons\Power&SleepPAUSED.ico

;
FileInstall, Dok's Pharmacy\Research Chemicals.ahk,%A_WorkingDir%\Dok's Rx Pad\resources\Research Chemicals.ahk
FileInstall, Dok's Pharmacy\Research Chemicals README.txt,%A_WorkingDir%\Dok's Rx Pad\resources\Research Chemicals README.txt
FileInstall, Dok's Pharmacy\ResearchChemicalsON.ico,%A_WorkingDir%\Dok's Rx Pad\resources\icons\ResearchChemicalsON.ico
FileInstall, Dok's Pharmacy\ResearchChemicalsSUSPENDED.ico,%A_WorkingDir%\Dok's Rx Pad\resources\icons\ResearchChemicalsSUSPENDED.ico
FileInstall, Dok's Pharmacy\ResearchChemicalsPAUSED.ico,%A_WorkingDir%\Dok's Rx Pad\resources\icons\ResearchChemicalsPAUSED.ico
;
;
/***********************************************************************************************
	OVER THE COUNTER SCRIPTS 
/***********************************************************************************************
*/
;	Installs extra tools that are kept as optional scripts:
FileInstall, Dok's Pharmacy\Ableton Takeover.ahk,%A_WorkingDir%\Over The Counter\Ableton Takeover\Ableton Takeover.ahk
FileInstall, Dok's Pharmacy\Ableton Takeover.exe,%A_WorkingDir%\Over The Counter\Ableton Takeover\Ableton Takeover.exe
FileInstall, Dok's Pharmacy\AbletonTakeoverON.ico,%A_WorkingDir%\Over The Counter\Ableton Takeover\icons\AbletonTakeoverON.ico
FileInstall, Dok's Pharmacy\AbletonTakeoverSUSPENDED.ico,%A_WorkingDir%\Over The Counter\Ableton Takeover\icons\AbletonTakeoverSUSPENDED.ico
FileInstall, Dok's Pharmacy\AbletonTakeoverPAUSED.ico,%A_WorkingDir%\Over The Counter\Ableton Takeover\icons\AbletonTakeoverPAUSED.ico
FileInstall, Dok's Pharmacy\Ableton Takeover README.txt,%A_WorkingDir%\Over The Counter\Ableton Takeover\Ableton Takeover README.txt
;
FileInstall, Dok's Pharmacy\Power & Sleep Hotkeys.exe,%A_WorkingDir%\Over The Counter\Power & Sleep\Power & Sleep Hotkeys.exe
FileInstall, Dok's Pharmacy\Power & Sleep Hotkeys.ahk,%A_WorkingDir%\Over The Counter\Power & Sleep\Power & Sleep Hotkeys.ahk
FileInstall, Dok's Pharmacy\Power&SleepON.ico,%A_WorkingDir%\Over The Counter\Power & Sleep\icons\Power&SleepON.ico
FileInstall, Dok's Pharmacy\Power&SleepSUSPENDED.ico,%A_WorkingDir%\Over The Counter\Power & Sleep\icons\Power&SleepSUSPENDED.ico
FileInstall, Dok's Pharmacy\Power&SleepPAUSED.ico,%A_WorkingDir%\Over The Counter\Power & Sleep\icons\Power&SleepPAUSED.ico
FileInstall, Dok's Pharmacy\Power & Sleep Hotkeys README.txt,%A_WorkingDir%\Over The Counter\Power & Sleep\Power & Sleep Hotkeys README.txt
;
;
/***********************************************************************************************
	RESEARCH CHEMICALS SCRIPT
/***********************************************************************************************
*/
;	Installs Research Chemicals script with associated icon files:
FileInstall, Dok's Pharmacy\Research Chemicals.ahk,%A_WorkingDir%\Research Chemicals\Research Chemicals.ahk
FileInstall, Dok's Pharmacy\Research Chemicals README.txt,%A_WorkingDir%\Research Chemicals\Research Chemicals README.txt
FileInstall, Dok's Pharmacy\ResearchChemicalsON.ico,%A_WorkingDir%\Research Chemicals\icons\ResearchChemicalsON.ico
FileInstall, Dok's Pharmacy\ResearchChemicalsSUSPENDED.ico,%A_WorkingDir%\Research Chemicals\icons\ResearchChemicalsSUSPENDED.ico
FileInstall, Dok's Pharmacy\ResearchChemicalsPAUSED.ico,%A_WorkingDir%\Research Chemicals\icons\ResearchChemicalsPAUSED.ico
;
;
/*****************************************************************************************************************************************************************************
;	1.4 SETS UP TRAY MANU ITEMS AND TOGGLES DIFFERENT ICONS FOR WHEN THE SCRIPT IS ACTIVE VS. SUSPENDED VS. PAUSED
****************************************************************************************************************************************************************************
*/

Menu, Tray, Icon,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxON.ico
Menu, Tray, NoStandard
Menu, Tray, Add, RxEAD ME, ManualLink
Menu, Tray, Add, Dok's Rx Guide, DoksRxGuide
Menu, Tray, Add, &Reload Script,ContextMenu
;~ Menu, Tray, Add, &Edit Script, ContextMenu
Menu, Tray, Add, &Suspend Keys, ContextMenu
Menu, Tray, Default, &Suspend Keys
Menu, Tray, Add,&Pause Script, ContextMenu
Menu,Tray, Add, Unplug, ContextMenu
Menu, Tray, Tip, Dok's Rx 1.1`nYou are in a simulation!
return

ManualLink:
run, https://github.com/dokryconn/Dokters-Prescription/blob/main/README.md
return

DoksRxGuide:
run, %A_WorkingDir%\Dok's Rx Guide.xls
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
    Menu,Tray,Icon,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxSUSPENDED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxON.ico
  Menu,Tray,Uncheck,&Pause Script
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxPAUSED.ico,,1
  Menu,Tray,Check,&Pause Script
  Pause,On
}
Return

SuspendHotkeysToggle:
If (A_IsSuspended)
{
  Suspend,Off
  If (A_IsPaused)
    Menu,Tray,Icon,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxPAUSED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxON.ico
  Menu,Tray,Uncheck,&Suspend Keys
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\Dok's Rx Pad\icons\DokRxSUSPENDED.ico,,1
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
^!+a::run, %A_WorkingDir%\Over The Counter\Ableton Takeover\Ableton Takeover.exe


;	LAUNCH "POWER & SLEEP HOTKEYS" SCRIPT	;	Once running, this script can be closed with [CTRL+ALT+SHIFT+HOME]
;
;	[CTRL+ALT+SHIFT+P]
;
^!+p::run, %A_WorkingDir%\Over The Counter\Power & Sleep\Power & Sleep Hotkeys.exe


;	LAUNCH "RESEARCH CHEMICALS" SCRIPT		;	Once running, this script can be closed with [CTRL+ALT+SHIFT+PG DOWN]
;
;	[CTRL+ALT+SHIFT+R]
;
^!+r::run, %A_WorkingDir%\Research Chemicals\Research Chemicals.ahk
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
 #IfWinActive Dokter's Prescription	; !!~~~	INSERT SCRIPT NAME HERE AND IN THE MSGBOX BELOW	~~~!!	
^s:: 									; [CTRL+S] (SAVE)
	Send ^s 								
	MsgBox, 0, Confirmation Message, Dokter's Prescription`n`nRELOADING...., .3	; !!~~~	INSERT SCRIPT NAME HERE	~~~!! ; ...the ".3" represents a .3 sec timeout for the message
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
;	OPEN / SHOW "FILE EXPLORER"
#`::
BlockInput, On
ifwinexist, ahk_class CabinetWClass
{
ifwinactive, ahk_class CabinetWClass
{
;~ winminimize, ahk_class CabinetWClass
winactivate, ahk_class Shell_TrayWnd
exit
}
winactivatebottom, ahk_class CabinetWClass
exit
}
run explorer.exe
BlockInput, Off
exit


;	[WIN+F1]
;
;	LAUNCH NEW "FILE EXPLORER" WINDOW		;  ONLY LAUNCHES NEW FILE EXPLORER WINDOWS
#F1::
run, explorer.exe
return


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
;	[CTRL+ALT+SHIFT+U]
;
^!+u::                                                                 
 Send ^c
 Sleep 10
 Stringupper Clipboard, Clipboard
 Send %Clipboard%
return


;	CONVERT SELECTED TEXT TO LOWERCASE	; COPIES  HIGHLIGHTED TEXT TO CLIPBOARD, ERASE TEXT, AND PASTE CLIPBOARD WITH CAPS OFF
;
;	[CTRL+ALT+SHIFT+L]
;
^!+l::
 Send ^c
 Sleep 10
 Stringlower Clipboard, Clipboard
 Send %Clipboard%
return


;	INVERT UPPER/LOWER CASE		; COPIES HIGHLIGHTED TEXT TO CLIPBOARD, ERASE TEXT, AND PASTE CLIPBOARD WITH CAPS LOCK INVERTED FOR EACH CHARACTER
;
;	[CTRL+ALT+SHIFT+I]
;
^!+i::
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
;	SELECT ALL
;	[ALT+A]
;
!a::Send ^a



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



;	DUPLICATE TIME
;
;	[ALT+END]
;
!End::Send ^+d



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



;	DELETE TIME
;
;	[ALT+DELETE]
;
!Delete::Send ^+{Delete}



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

/*
/*****************************************************************************************************************************************************************************

ATTENTION!!! - ADJUST THE x, y MOUSE COORDINATES FOR THIS HOTKEY TO YOUR OWN SCREEN RESOLUTION IF NEEDED

/*****************************************************************************************************************************************************************************
*/

;
;	ACTIVE ARRANGEMENT WINDOW REGION (Sends a R-Click to the arrangment window region, then sends ESC key to exit the R-Click menu that pops up)
;	[INSERT]
Ins::
MouseGetPos, StartX, StartY
MouseClick, right,  613, 248
Send, {Esc}
MouseMove, StartX, StartY
return


;
;	SCROLL HORIZONTALLY LEFT
;	[SHIFT+1]
+1::Send, +{WheelUp 3}



;	SCROLL HORIZONTALLY RIGHT
;	[SHIFT+2]
+2::Send, +{WheelDown 3}



;	HIDE/SHOW INFO VIEW	(HELP)
;
;	[/]
;
/::+/



;	DETAIL VIEW TOGGLE
;
;	[ALT+D]
;
!d::
	BlockInput, On
	Send ^!l
	BlockInput, Off
	return



;	BROWSER VIEW TOGGLE
;
;	[ALT+S]
;
!s::
	BlockInput, On
	Send ^!b
	BlockInput, Off



;	OVERVIEW / ZOOMING TOGGLE
;
;	[ALT+Z]
;
!z::
	BlockInput, On
	Send ^!o
	BlockInput, Off



;	VIEW INPUT / OUTPUT TOGGLE
;
;	[ALT+SHIFT+I]
;
!+i::Send ^!i



;	VIEW SENDS TOGGLE
;
;	[ALT+SHIFT+S]
;
!+s::Send ^!s	



;	VIEW RETURNS TOGGLE
;
;	[ALT+SHIFT+R]
;
!+r::Send ^!r



;	VIEW MIXER TOGGLE
;
;	[ALT+SHIFT+M]
;
!+m::Send ^!m



;	VIEW DEVICE SLOTS TOGGLE
;
;	[ALT+SHIFT+D]
;
!+d::Send !v{Up 11}{Enter}



;	VIEW FILE MANAGER TOGGLE
;
;	[ALT+M]
;
!m::Send !v{Down 4}{Enter}



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
!q::
	BlockInput, On
	Send, ^u
	BlockInput, Off
	return



;	QUANTIZE SETTINGS MENU
;
;	[ALT+W]
;
!w::
	BlockInput, On
	Send, ^+u
	BlockInput, Off
	return



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
^+Numpad0::Send !e{Up 7}{Right}{Enter}

	
;	1/4 NOTE RECORD QUANTIZATION
;
;	[CTRL+SHIFT+4]
;
^+Numpad4::Send !e{Up 7}{Right}{Down}{Enter}


;	1/8 NOTE RECORD QUANTIZATION
;
;	[CTRL+SHIFT+8]
;
^+Numpad8::Send !e{Up 7}{Right}{Down 2}{Enter}
	
	
;	1/8 NOTE TRIPLETS RECORD QUANTIZATION
;
;	[CTRL+SHIFT+1]
;
^+Numpad1::Send !e{Up 7}{Right}{Down 3}{Enter}
	
	
;	1/8 NOTE AND TRIPLETS RECORD QUANTIZATION
;
;	[CTRL+SHIFT+2]
;
^+Numpad2::Send !e{Up 7}{Right}{Down 4}{Enter}


;	1/16 NOTE RECORD QUANTIZATION
;
;	[CTRL+SHIFT+6]
;
^+Numpad6::Send !e{Up 7}{Right}{Down 5}{Enter}


;	1/16 NOTE TRIPLETS RECORD QUANTIZATION
;
;	[CTRL+SHIFT+3]
;
^+Numpad3::Send !e{Up 7}{Right}{Down 6}{Enter}
	
	
;	1/16 NOTE AND TRIPLETS RECORD QUANTIZATION
;
;	[CTRL+SHIFT+7]
;
^+Numpad7::Send !e{Up 7}{Right}{Down 7}{Enter}
	

;	1/32 NOTE RECORD QUANTIZATION
;
;	[CTRL+SHIFT+9]
;
^+Numpad9::Send !e{Up 7}{Right}{Down 8}{Enter}
;	
/***********************************************************************************************
;	3.1.4		PIANO ROLL		 (ABLETON LIVE)
/***********************************************************************************************
*/
;	PIANO ROLL FIXED GRID - "OFF"
;	[ALT+F1]
!F1::
MouseGetPos,,,guideUnderCursor
Click, Right
sleep, 20
SendInput {Up 3}{Enter}
return

; 	PIANO ROLL FIXED GRID - "1/2"
;	[ALT+F2]
!F2::
MouseGetPos,,,guideUnderCursor
Click, Right
sleep, 20
SendInput {Up 5}{Right 4}{Enter}
return


; 	TOGGLE TRIPLET GRID FOR PIANO ROLL - "TRIPLET GRID" ON/OFF
;	[ALT+F3]
!F3::Send, ^3


; PIANO ROLL FIXED GRID - "1/4"
;	[ALT+F4]
!F4::
MouseGetPos,,,guideUnderCursor
Click, Right
sleep, 20
SendInput {Up 4}{Enter}
return


;	PIANO ROLL FIXED GRID - "1/8"
;	[ALT+F5]
!F5::
MouseGetPos,,,guideUnderCursor
Click, Right
sleep, 20
SendInput {Up 4}{Right}{Enter}
return


;	PIANO ROLL FIXED GRID - "1/16"
;	[ALT+F6]
!F6::
MouseGetPos,,,guideUnderCursor
Click, Right
sleep, 20
SendInput {Up 4}{Right 2}{Enter}
return


;	PIANO ROLL FIXED GRID - "1/32"
;	[ALT+F7]
!F7::
MouseGetPos,,,guideUnderCursor
Click, Right
sleep, 20
SendInput {Up 4}{Right 3}{Enter}
return


;	PIANO ROLL ADAPTIVE GRID - "NARROWEST"
;	[ALT+F8]
!F8::
MouseGetPos,,,guideUnderCursor
Click, Right
sleep, 20
SendInput {Up 6}{Right 1}{Enter}
return


;	CROP CLIP
;	[ALT+F9]
!F9::
MouseGetPos,,,guideUnderCursor
Click, Right
sleep, 20
SendInput {Down 4}{Enter}
return
;
/***********************************************************************************************
;	3.1.5		TRANSPORT 			(ABLETON LIVE)
/***********************************************************************************************
*/
;	LOOP
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
;
;	PLAY FROM BEGINNING  (Sends R-Click to activate the arrangement window region,then exits the R-Click menu with ESC, then triggers HOME key, then SPACE)
;	[CTRL+HOME]
;
^Home::
	
	MouseGetPos, StartX, StartY
	MouseClick, right,  613, 248
	Send, {Esc}{Home}{Space}
	MouseMove, StartX, StartY
	return
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
;
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
;
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

NOTE: PROGRAMS THAT WERE INSTALLED BY "Microsoft Store" REQUIRE CREATED SHORTCUTS TO BE MOVED TO THE FOLDER:
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


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

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


/* - !!!!!!!!!!!!!!!! REMOVE THIS COMMENT LINE TO ACTIVATE THE HOTKEY BELOW !!!!!!!!!!!!!!!!

;	LAUNCH & TOGGLE "INSERT APP NAME HERE" WINDOW
;
;	[WIN+NUMPAD 0]
;
#Numpad0::
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
*/

;		- Dokter RyConn
;		https://paypal.me/DokRyConn


