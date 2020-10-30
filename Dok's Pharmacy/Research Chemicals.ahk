; ****************************************************************************************************************************************************************************
;		DEFAULT AUTOHOTKEY STRINGS (DO NOT REMOVE FROM SCRIPT)
; ****************************************************************************************************************************************************************************
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.	
; ****************************************************************************************************************************************************************************
/*
LAST UPDATED: 
10/26/2020
1:51a EST

- DOKTER RYCONN
*/

/*****************************************************************************************************************************************************************************
;	1.	UNIVERSAL SCRIPT RULES
****************************************************************************************************************************************************************************
*/
#SingleInstance, force		; ONLY LAUNCH 1 INSTANCE OF THIS SCRIPT AT A TIME.
SetTitleMatchMode, 2 		; A WINDOW'S TITLE CAN CONTAIN WINTITLE ANYWHERE INSIDE IT TO BE A MATCH.
SetKeyDelay, 10, 10			; THIS CONTROLS THE LENGTH OF TIME THAT A HOTKEY IS PRESSED BEFORE IT IS RELEASED.

Menu,Tray,Icon, %A_WorkingDir%\icons\ResearchChemicalsON.ico

Menu, Tray, Tip, Research Chemicals`nPut your goggles on!

Menu, Tray, NoStandard
Menu, Tray, Add, &Reload Script,ContextMenu
Menu, Tray, Add, &Edit Script, ContextMenu
Menu, Tray, Add, &Suspend Keys, ContextMenu
Menu, Tray, Default, &Suspend Keys
Menu, Tray, Add,&Pause Script, ContextMenu
Menu,Tray, Add, Unplug, ContextMenu
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
    Menu,Tray,Icon,%A_WorkingDir%\icons\ResearchChemicalsSUSPENDED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\icons\ResearchChemicalsON.ico
  Menu,Tray,Uncheck,&Pause Script
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\icons\ResearchChemicalsPAUSED.ico,,1
  Menu,Tray,Check,&Pause Script
  Pause,On
}
Return

SuspendHotkeysToggle:
If (A_IsSuspended)
{
  Suspend,Off
  If (A_IsPaused)
    Menu,Tray,Icon,%A_WorkingDir%\icons\ResearchChemicalsPAUSED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\icons\ResearchChemicalsON.ico
  Menu,Tray,Uncheck,&Suspend Keys
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\icons\ResearchChemicalsSUSPENDED.ico,,1
  Menu,Tray,Check,&Suspend Keys
  Suspend,On
}
return


/*****************************************************************************************************************************************************************************
;	2.	HOTKEYS
****************************************************************************************************************************************************************************
*/

/*	LAUNCH A TEST MESSAGE BOX
*/
;	[CTRL+ALT++SHIFT+T]
;
^!+t::							 
	MsgBox, 0, This is only a test!, Research Chemicals is running!`n`n`nYES !!!!!!!!!!!!!!!!!!!!!!!!!!!!`n`n`nYou Pressed [CTRL+ALT+WIN+SHIFT+T]
	return


/*	IDENTIFY CURSOR POSITION		
*/
;	[CTRL+ALT+SHIFT+C]
;
^!+c::							; THIS IDENTIFIES THE CURRENT MOUSE POSITION COORDINATES
	MouseGetPos, LocX, LocY
	MsgBox, 0, Current Mouse Location, Your mouse coordinates are:`n`nX	=	%LocX% `n`nY	=	%LocY%
	return
;	


/*	EXIT SCRIPT
*/
;
;	[CTRL+ALT+SHIFT+DELETE]
;
^!+PGDN::exitapp

/*****************************************************************************************************************************************************************************
;	3.	DEVELOPMENT SHORTCUT HOTKEYS
****************************************************************************************************************************************************************************
*/
#IfWinActive Research Chemicals.ahk	; 

/*;	SAVE AND RELOAD SCRIPT
*/
;
;	[CTRL+S]
;
^s:: 										; [CTRL+S] HOTKEY
	Send ^s 								; [CTRL+S] (SAVE)
	MsgBox, 0, Confirmation Message, Research Chemicals`n`nRELOADING...., .3	; !!~~~	INSERT SCRIPT NAME HERE	~~~!! ; THE LAST VALUE REPRESENTS A .3 SECOND TIMEOUT
		IfMsgBox, OK
			return
	Reload									; THIS FINALLY RELOADS THE SAVED SCRIPT
	return
#IfWinActive
