; ****************************************************************************************************************************************************************************
;		DEFAULT AUTOHOTKEY STRINGS (DO NOT REMOVE FROM SCRIPT)
; ****************************************************************************************************************************************************************************
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.					
#SingleInstance, force		; ONLY LAUNCH 1 INSTANCE OF THIS SCRIPT AT A TIME.
; ****************************************************************************************************************************************************************************

Menu, Tray, NoStandard
Menu, Tray, Add, &Reload Script,ContextMenu
Menu, Tray, Add, &Edit Script, ContextMenu
Menu, Tray, Add, &Suspend Keys, ContextMenu
Menu, Tray, Add, &Pause Script, ContextMenu
Menu, Tray, Default, &Pause Script
Menu, Tray, Add, Unplug, ContextMenu
Menu, Tray, Icon, %A_WorkingDir%\icons\AbletonTakeoverON.ico
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
    Menu,Tray,Icon,%A_WorkingDir%\icons\AbletonTakeoverPAUSED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\icons\AbletonTakeoverON.ico
  Menu,Tray,Uncheck,&Pause Script
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\icons\AbletonTakeoverPAUSED.ico,,1
  Menu,Tray,Check,&Pause Script
  Pause,On
}
Return

SuspendHotkeysToggle:
If (A_IsSuspended)
{
  Suspend,Off
  If (A_IsPaused)
    Menu,Tray,Icon,%A_WorkingDir%\icons\AbletonTakeoverPAUSED.ico,,1
  Else
    Menu,Tray,Icon,%A_WorkingDir%\icons\AbletonTakeoverON.ico
  Menu,Tray,Uncheck,&Suspend Keys
}
Else
{
  Menu,Tray,Icon,%A_WorkingDir%\icons\AbletonTakeoverPAUSED.ico,,1
  Menu,Tray,Check,&Suspend Keys
  Suspend,On
}
return


Start:
WinWaitActive, ahk_class Ableton Live Window Class
Process_Suspend("chrome.exe")
Process_Suspend("vncviewer.exe")
Process_Suspend("VLCPortable.exe")
Process_Suspend("VLC.exe")
Process_Suspend("FolderSizeSvc.exe")
Process_Suspend("YourPhone.exe")
Process_Suspend("Microsoft.Photos.exe")
Process_Suspend("SciTE.exe")
Process_Suspend("brave.exe")
Process_Suspend("notepad.exe")
Process_Suspend("Spotify.exe")
Process_Suspend("msedge.exe")
Process_Suspend("soffice.bin")
Process_Suspend("Discord.exe")
Process_Suspend("gimp-2.10.exe")
Process_Suspend("PaintStudio.View.exe")
Process_Suspend("iTunes.exe")
Process_Suspend("synergys.exe")
Process_Suspend("synergyd.exe")
Process_Suspend("Cortana.exe")
Process_Suspend("Acrobat.exe")
Process_Suspend("Excel.exe")
Process_Suspend("Firefox.exe")
Process_Suspend("Notepad++.exe")
Process_Suspend("WINWORD.exe")
Process_Suspend("onenote.exe")
Process_Suspend("Photoshop.exe")
Process_Suspend("Illustrator.exe")
Process_Suspend("Dreamweaver.exe")
Process_Suspend("Adobe Premiere Pro.exe")
Process_Suspend("Adobe Desktop Service.exe")
Process_Suspend("Creative Cloud.exe")
Process_Suspend("Netflix.exe")
Process_Suspend("Zoom.exe")
Process_Suspend("Xbox.exe")
Process_Suspend("FacebookMessenger.exe")
Process_Suspend("Pandora.exe")
Process_Suspend("Twitch.exe")
Process_Suspend("Twitter.Windows.exe")
Process_Suspend("Audacity.exe")
Process_Suspend("OfficeClickToRun.exe")
Process_Suspend("7zFM.exe")


WinWaitNotActive, ahk_class Ableton Live Window Class
Process_Resume("chrome.exe")
Process_Resume("vncviewer.exe")
Process_Resume("VLCPortable.exe")
Process_Resume("VLC.exe")
Process_Resume("FolderSizeSvc.exe")
Process_Resume("YourPhone.exe")
Process_Resume("Microsoft.Photos.exe")
Process_Resume("SciTE.exe")
Process_Resume("brave.exe")
Process_Resume("notepad.exe")
Process_Resume("Spotify.exe")
Process_Resume("msedge.exe")
Process_Resume("soffice.bin")
Process_Resume("Discord.exe")
Process_Resume("gimp-2.10.exe")
Process_Resume("PaintStudio.View.exe")
Process_Resume("iTunes.exe")
Process_Resume("synergys.exe")
Process_Resume("synergyd.exe")
Process_Resume("Cortana.exe")
Process_Resume("Acrobat.exe")
Process_Resume("Excel.exe")
Process_Resume("Firefox.exe")
Process_Resume("Notepad++.exe")
Process_Resume("WINWORD.exe")
Process_Resume("onenote.exe")
Process_Resume("Photoshop.exe")
Process_Resume("Illustrator.exe")
Process_Resume("Dreamweaver.exe")
Process_Resume("Adobe Premiere Pro.exe")
Process_Resume("Adobe Desktop Service.exe")
Process_Resume("Creative Cloud.exe")
Process_Resume("Netflix.exe")
Process_Resume("Zoom.exe")
Process_Resume("Xbox.exe")
Process_Resume("FacebookMessenger.exe")
Process_Resume("Pandora.exe")
Process_Resume("Twitch.exe")
Process_Resume("Twitter.Windows.exe")
Process_Resume("Audacity.exe")
Process_Resume("OfficeClickToRun.exe")
Process_Resume("7zFM.exe")


Process_Suspend(PName){
for process in ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process where Name = '" PName "'") {
PID := process.ProcessId
h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
If !h
Return -1
DllCall("ntdll.dll\NtSuspendProcess", "Int", h)
DllCall("CloseHandle", "Int", h)
}
}
Process_Resume(PName){
for process in ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process where Name = '" PName "'") {
PID := process.ProcessId
h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
If !h
Return -1
DllCall("ntdll.dll\NtResumeProcess", "Int", h)
DllCall("CloseHandle", "Int", h)
}
}
Goto Start


;   EXIT "ABLETON TAKEOVER" SCRIPT
^!+Del::ExitApp


;****************************************************************************************************************************************************************************
;                       END OF SCRIPT
;****************************************************************************************************************************************************************************
