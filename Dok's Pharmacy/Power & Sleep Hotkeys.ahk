; ****************************************************************************************************************************************************************************
;		DEFAULT AUTOHOTKEY STRINGS (DO NOT REMOVE FROM SCRIPT)
; ****************************************************************************************************************************************************************************
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.			
#SingleInstance, force		; ONLY LAUNCH 1 INSTANCE OF THIS SCRIPT AT A TIME.
; ****************************************************************************************************************************************************************************
/*
;
;	1. WINDOWS MENU TRAY ICON / TRAY OPTIONS
;
*/
Menu, Tray, NoStandard
Menu, Tray, Add, &Reload Script,ContextMenu
Menu, Tray, Add, &Edit Script, ContextMenu
Menu, Tray, Add, &Suspend Keys, ContextMenu
Menu, Tray, Default, &Suspend Keys
Menu, Tray, Add,&Pause Script, ContextMenu
Menu,Tray, Add, Unplug, ContextMenu
Menu, Tray, Icon,%A_WorkingDir%\icons\Power&SleepON.ico
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
    Menu,Tray,Icon,%A_WorkingDir%\icons\Power&SleepSUSPENDED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\icons\Power&SleepON.ico
  Menu,Tray,Uncheck,&Pause Script
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\icons\Power&SleepPAUSED.ico,,1
  Menu,Tray,Check,&Pause Script
  Pause,On
}
Return

SuspendHotkeysToggle:
If (A_IsSuspended)
{
  Suspend,Off
  If (A_IsPaused)
    Menu,Tray,Icon,%A_WorkingDir%\icons\Power&SleepPAUSED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\icons\Power&SleepON.ico
  Menu,Tray,Uncheck,&Suspend Keys
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\icons\Power&SleepSUSPENDED.ico,,1
  Menu,Tray,Check,&Suspend Keys
  Suspend,On
}
return

/*
;
;	2.	SLEEP / HIBERNATE / SHUTDOWN CONTROLS
;
*/

;	SLEEP PC / WINDOWS
;
;   [CTRL+ALT+SHIFT+ESC]
;
^!+Esc::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 1) ;  Suspend



;   RESTART PC / WINDOWS
;
;   [CTRL+ALT+SHIFT+F5]
;
^!+F5::shutdown, 2



;	HIBERNATE PC / WINDOWS
;
;   [CTRL+ALT+SHIFT+F9]
;
^!+F9::DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 1) ;  Hibernate



;	SHUTDOWN PC / WINDOWS
;
;   [CTRL+ALT+SHIFT+F12]
;
^!+F12::shutdown, 8 ;Powerdown ; 



;	EXIT "POWER & SLEEP HOTKEYS" SCRIPT
;
;   [CTRL+ALT+SHIFT+HOME]
;
^!+Home::ExitApp


;****************************************************************************************************************************************************************************
;                       END OF SCRIPT
;****************************************************************************************************************************************************************************
