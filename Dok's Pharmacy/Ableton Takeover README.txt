"ABLETON TAKEOVER" SCRIPT README
-------------------------------------

This suspends any program processes for specified running programs when the Ableton Live window is active. The script will resume the suspended processes once the Ableton Live window is no longer active.

- You can LAUNCH the "Ableton Takeover" script with [CTRL+ALT+SHIFT+A] the "Dokter's Prescription" script is running.

- You can EXIT the "Ableton Takeover" script with [CTRL+ALT+SHIFT+DELETE] (a native hotkey in the "Ableton Takeover" script)

For optimal results, edit the raw .AHK version of this script to specify the exact programs that you would like to suspend/resume while the Ableton Live window is active/inactive.

To edit the .AHK version of this script, simply add mimicked lines of code under each of the "Process_Suspend" and "Process_Resume" lists in the script, adjusting for your specific process name accordingly as needed. (Example: Indicating the specific ".exe" filename for the desired program processes of your choice.)

The specific ".exe" name of your program process can be found by opening Task Manager, right-click a specific program process, select Properties, and reference the filename in the first textbox field under the "General" tab.

By default, the compiled .EXE version of this script covers a "decent" amount of "common" windows applications to be affected by the script.

ALL PROGRAM PROCESSES INCLUDED BY DEFAULT ARE LISTED BELOW:
------------------------------
chrome.exe
VLC.exe
vncviewer.exe
FolderSizeSvc.exe
YourPhone.exe
Microsoft.Photos.exe
SciTE.exe
brave.exe
notepad.exe
Spotify.exe
msedge.exe
soffice.bin
Discord.exe
gimp-2.10.exe
PaintStudio.View.exe
iTunes.exe
synergys.exe
synergyd.exe
Cortana.exe
Acrobat.exe
Excel.exe
Firefox.exe
Notepad++.exe
WINWORD.exe
onenote.exe
Photoshop.exe
Illustrator.exe
Dreamweaver.exe
Adobe Premiere Pro.exe
Adobe Desktop Service.exe
Creative Cloud.exe
Netflix.exe
Zoom.exe
Xbox.exe
FacebookMessenger.exe
Pandora.exe
Twitch.exe
Twitter.Windows.exe
Audacity.exe
OfficeClickToRun.exe
7zFM.exe
------------------------------


ADDITIONAL NOTES:
- Running the .AHK version of the script will require "Autohotkey" to be installed on your computer - https://www.autohotkey.com/ )
- Once "Autohotkey" is installed on your computer, you may also compile the script into a .EXE file by right-clicking the .AHK file and selecting "Compile Script." This will allow you to use your edited script on any computer even if "Autohotkey" is not installed on that computer.
- As usual, you can disable this script at any time by right-clicking the Windows tray icon and selecting "Pause Script." 
- The Windows tray icon will display as RED when the script is Paused.