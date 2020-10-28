# Dokter's Prescription
A script suite to make life easier for Windows and **Ableton Live** users.


##	Default "Dokter’s Prescription" hotkeys

- The "Dokter’s Prescription.EXE" script enables several hotkeys for Windows, Ableton Live, and other specific programs:

**NOTE: For the complete list of keyboard hotkeys, reference the included `Dok's Rx Guide.xls` spreadsheet**

  - **Windows** - **15** custom hotkeys
  - **Ableton Live*** - **47** custom hotkeys
  - **Spotify*** - **9** custom hotkeys
  - **Google Chrome*** - **5** custom hotkeys
  - **Brave Browser*** - **5** custom hotkeys
  - **Run extra scripts** - **3** custom hotkeys
  
_*Program-specific hotkeys are only enabled while the corresponding program window is active._

- **Suspend / Resume Script**
	- `[CTRL+ALT+SHIFT+PAUSE]`

- **Exit Script**
	- `[CTRL+ALT+SHIFT+END]`

_[Go to the **Customizing Scripts** section](#customizing-scripts) below, for instructions on how to customize or remove any default hotkeys included in this script._

### **Windows Hotkeys**

- **2ND `[WIN]` KEYBOARD KEY:**
  - `[Menu Key]`
- **LAUNCH FILE EXPLORER** ("C:\Users"):
  - `[CTRL+TILDE]`
- **CAPTURE SCREENSHOT:**
  - `[PRINTSCREEN]`
- **QUIT PROGRAM:**
  - `[WIN+Q]`
- **CLOSE WINDOW/TAB:**
  - `[WIN+W]`
- **MINIMIZE WINDOW:**
  - `[WIN+DOWN]`
- **MAXIMIZE WINDOW:**
  - `[WIN+UP]`
- **CONVERT SELECTED TEXT TO UPPERCASE:**
  - `[CTRL+SHIFT+U]`
- **CONVERT SELECTED TEXT TO LOWERCASE:**
  - `[CTRL+SHIFT+L]`
- **INVERT CASE OF SELECTED TEXT:**
  - `[CTRL+SHIFT+I]`
- **PLAY / PAUSE MEDIA:**
  - `[ALT+P]`
- **PREVIOUS TRACK:**
  - `[ALT+>]`
- **NEXT TRACK:**
  - `[ALT+<]`
- **MUTE MEDIA:**
  - `[ALT+M]`
- **VOLUME UP:**
  - `[ALT+ +]`
- **VOLUME DOWN:**
  - `[ALT+ -]`

### **Ableton Live Hotkeys**
- 


### **Spotify Hotkeys**
- **PLAY / PAUSE:**
  - `[ALT+P]`
- **PREVIOUS TRACK:**
  - `[ALT+<]`
- **NEXT TRACK:**
  - `[ALT+>]`
- **PRIVATE SESSION:**
  - `[ALT+I]`


### **Google Chrome Hotkeys**
- **NEW WINDOW:**
  - `[ALT+N]`
- **NEW TAB:**
  - `[ALT+T]`
- **REFRESH:**
  - `[ALT+R]`
- **CLOSE TAB:**
  - `[ALT+W]`
- **INCOGNITO WINDOW:**
  - `[ALT+I]`
  
### **Brave Browser Hotkeys**
- **NEW WINDOW:**
  - `[ALT+N]`
- **NEW TAB:**
  - `[ALT+T]`
- **REFRESH:**
  - `[ALT+R]`
- **CLOSE TAB:**
  - `[ALT+W]`
- **INCOGNITO WINDOW:**
  - `[ALT+I]`



## Optional* "Dokter’s Prescription" Hotkeys

The optional hotkeys listed below are __disabled by default__ can be added to the script by editing "**Dok's Rx Pad.AHK**" script located in `Dok's Rx Cabinet\Dok's Rx`.

_*[Go to the **Customizing Scripts** section](#customizing-scripts) below, for instructions on how to activate the following optional hotkeys:_

### A-Z Launch/Toggle Programs:
- These hotkeys are __disabled by default__ but can be customized to your preference by editing the **`Dok's Rx Pad.AHK`** script.
- These hotkeys will launch a specified program if it is not currently running, **OR** toggle the program window if the program is currently running, using the following hotkeys:
  - **`[WIN + SHIFT + letter key]`**
    - i.e. **`[WIN+SHIFT+A]`**; **`[WIN+SHIFT+B]`**; **`[WIN+SHIFT+C]`**; etc.

_*[Go to the **Customizing Scripts** section](#customizing-scripts) below, for more info on this._

### 0-9 Launch/Toggle Programs
- These hotkeys are __disabled by default__ but can be customized to your personal preference by editing the **`Dok's Rx Pad.AHK`** script. 
- These hotkeys will launch a specified program if it is not currently running, **OR** toggle the program window if the program is currently running, using the following hotkeys:
  - **`[WIN + number key]`**
    - i.e. **`[WIN+1]`**; **`[WIN+2]`**; **`[WIN+3]`**; etc.
    
 _*[Go to the **Customizing Scripts** section](#customizing-scripts) below, for more info on this._

### Mouse Click Hotkeys
- These hotkeys are __disabled by default__ but can be customized to your personal preference by editing the **`Dok's Rx Pad.AHK`** script. 
- These hotkeys will trigger mouse clicks on specified screen coordinates and return the mouse position to it's original position.

 _*[Go to the **Customizing Scripts** section](#customizing-scripts) below, for more info on this._

##### OPTIONAL ABLETON LIVE HOTKEYS:
- **MIDI ARRANGEMENT OVERDUB BUTTON**
  - `ALT+O`
- **AUTOMATION ARM BUTTON**
  - `ALT+P`
- **RE-ENABLE AUTOMATION**
  - `ALT+[`
- **CAPTURE MIDI**
  - `ALT+]`
- **SESSION RECORD ENABLE**
  - `ALT+\` 

#### OPTIONAL SPOTIFY HOTKEYS:
- **HOME:**
  - `[ALT+H]`
- **BROWSE:**
  - `[ALT+B]`
- **RADIO**
  - `[ALT+R]`
- **SKIP BACK 15 SECONDS**
  - `[ALT+SEMICOLON]`
- **SKIP FORWARD 15 SECONDS:**
  - `[ALT+APOSTROPHE]`

 _*[Go to the **Customizing Scripts** section](#customizing-scripts) below, for more info on this._

### Hotstrings
- These hotstrings are __disabled by default__ but can be customized to your personal preference by editing the **`Dok's Rx Pad.AHK`** script. 
- These hotkeys are used for auto-typing strings of text by typing an abbreviated "hotstring."

#### The Hotstring examples included in the `Dok's Rx Pad.AHK` script are:
- "YOUR_EMAIL_ADDRESS@EMAIL.com"
	- `[abc.]`
		- This converts typing "abc." into "YOUR_EMAIL_ADDRESS@EMAIL.com"
- "YOUR_USERNAME"
    - `[xyz.]`
    	- This converts typing "xyz." into "YOUR_USERNAME"
- "Autohotkey"
	- `[ahk.]`
		- This converts typing "ahk." into "Autohotkey"

 _*[Go to the **Customizing Scripts** section](#customizing-scripts) below, for more info on this._

#	The "Dok’s Rx Cabinet" folder
The `Dok's Rx Cabinet` folder contains sub-folders for associated scripts/files referenced by the `Dokter's Prescription.EXE` and `Dok's Rx Pad.AHK` scripts.

The following additional scripts are stored within the`Dok's Rx Cabinet` folders:

- **Ableton Takeover**
- **Power & Sleep Hotkeys**
- **Research Chemicals**

These additional packaged scripts can of course be launched manually from `Dok's Rx Cabinet` and used independently without the "Dokter's Prescription" script running.

*If the “Dok’s Rx Cabinet” folder is not kept within the same location that you are running the `Dokter’s Prescription.EXE` script from, the script may run into an error if a hotkey is pressed and the script is unable to locate the associated file within the `Dok’s Rx Cabinet` folder. In regard to this, if the `Dok's Rx Cabinet` folder gets moved or deleted, you can simply recreate it by launching the “Dokter’s Prescription.EXE” file again. Re-launching the `Dokter's Prescription.EXE` script will not overwrite any existing packaged files in `Dok's Rx Cabinet`. In other words, any changes that you have made to files within `Dok's Rx Cabinet` will not be lost by re-launching `Dokter's Prescription.EXE`*



##	The "Dok’s Rx" folder
The `Dok’s Rx` folder contains the following items referenced by the  **`Dokter's Prescription.EXE`** and **`Dok's Rx Pad.AHK`** scripts:

- **The "Dok's Rx Pad.AHK" script:**
  - This .AHK script is included for customizing the **Dokter's Prescription** script to meet your desired preferences.

_[Go to the **Customizing Scripts** section](#customizing-scripts) below for more info on this._

- **The "Dok’s Rx Guide.xls" spreadsheet**
  - Includes a full list of default script functions and includes additional workbook tabs for referencing native hotkeys for a few additional programs.

- **The "App Launch Shortcuts" folder**
  - Used for storing created program shortcut files for launching/toggling apps that were installed by Microsoft Store.
  
*The `App Launch Shortcuts` sub-folder within `Dok’s Rx Cabinet\Dok’s Rx` is a location to keep program shortcuts for the "Launch/Toggle Programs" optional template code within the "*Dok's Rx Pad**" script.*

*For example, programs that are downloaded from the Microsoft Store are not located in the standard program location. These programs are usually nested within `C:\Program Files\WindowsApps`. Typically, if you attempt the run the programs directly from their native file location, they will not launch properly. For these instances, you can create a program shortcut for these applications and move it into the `App Launch Shortcuts` folder.*

*i.e. Using the filepath:*

`"%A_WorkingDir%\Dok's Rx\App Launch Shortcuts\Microsoft To Do"`

*instead of:* 

`"C:\Program Files\WindowsApps\Microsoft.Todos_2.28.32802.0_x64__8wekyb3d8bbwe\ToDo.exe"`

- **Icon files referenced by the the "Dok's Rx Pad.AHK" script.**



##	The "Over The Counter" folder
The `Over The Counter` folder contains additional scripts referenced by **`Dokter's Prescription.EXE`** and **`Dok's Rx Pad.AHK`**. These scripts can also be launched and used independently without the **`Dokter's Prescription.EXE`** or **`Dok's Rx Pad.AHK`** running. This folder contains:

### THE "ABLETON TAKEOVER.EXE" SCRIPT:
 - **Suspends program processes of specified programs while the Ableton Live window is active and resumes the program processes once the Ableton Live window is not active.**
 - **LAUNCH SCRIPT WHILE RUNNING Dokter's Prescription**
    - `[CTRL+ALT+SHIFT+A]`
 - **EXIT SCRIPT**
    - `[CTRL+ALT+SHIFT+DEL]`

Reference the `Ableton Takeover README.txt` for more info and the complete list of default program processes included in the .EXE version of this script.

An .AHK version of this script is included within `Dok's Rx Cabinet\Over The Counter\Ableton Takeover` for optional customizing. Although the .EXE version of **Ableton Takeover** includes a *decent* list of *common* programs, you can edit this script to include your own program processes that are commonly running while you are using Ableton Live. 

_*[Go to the **Customizing Scripts** section](#customizing-scripts) below for more info on this._



### THE "POWER & SLEEP HOTKEYS.EXE" SCRIPT:
 - Enables hotkeys to sleep, hibernate, restart, or shutdown your PC. 
 - **SLEEP PC**
  - **`[CTRL+ALT+SHIFT+ESC]`**
 - **RESART PC**
  - **`[CTRL+ALT+SHIFT+F5]`**
 - **HIBERNATE PC**
  - **`[CTRL+ALT+SHIFT+F9]`**
 - **SHUTDOWN PC**
  - **`[CTRL+ALT+SHIFT+F12]`**
 - **LAUNCH SCRIPT WHILE RUNNING Dokter's Prescription:**
  - **`[CTRL+ALT+SHIFT+P]`**
 - **EXIT SCRIPT:**
  - **`[CTRL+ALT+SHIFT+HOME]`**

An .AHK version of this script is included within `Dok's Rx Cabinet\Over The Counter\Power & Sleep` for optional customizing. Although the .EXE version of **Power & Sleep Hotkeys** includes the hotkeys shown above, you can edit this script to adjust the hotkeys for your personal preference. 

_*[Go to the **Customizing Scripts** section](#customizing-scripts) below for more info on this._



# The "Research Chemicals" folder
The `Research Chemicals` folder contains the `Research Chemicals.AHK` script and associated tray icons. The `Research Chemicals.AHK` script is a “testing script” to be used for Autohotkey script development. (Includes Autohotkey's "Window Spy" tool in the tray menu)

### THE "RESEARCH CHEMICALS.AHK" SCRIPT:
This script can be used as a separate "tool box" script and for testing Autohotkey functions temporarily.

**NOTE:** The included hotkey: "Identify Mouse Cursor Coordinates" - **`[CTRL+ALT+SHIT+C]`** in "Research Chemicals.AHK" should be used to calibrate the mouse click hotkeys within **Dokter's Prescription.** 

_*[Go to the **Customizing Scripts** section](#customizing-scripts) below for more info on this._

*The Autohotkey software will need to be installed on your computer to run this script, as there is no compiled .EXE version included due to the nature of it's intended usage.*

 - **IDENTIFY MOUSE CURSOR COORDINATES:**
    - `[CTRL+ALT+SHIFT+C]`
 - **DISPLAY TEST MESSAGE:**
    - `[CTRL+ALT+SHIFT+T]`
 - **LAUNCH SCRIPT WHILE RUNNING Dokter's Prescription:**
    - `[CTRL+ALT+SHIFT+R]`
 - **EXIT SCRIPT:**
    - `[CTRL+ALT+SHIFT+DEL]`
 - **SAVE AND RELOAD SCRIPT:**
    - `[CTRL+S]`



#	Customizing Scripts

## Customizing the **Dokter's Prescription** script ("Dok's Rx Pad.AHK")

- The **`Dok's Rx Pad.AHK`** is included in the `Dok's Rx Cabinet\Dok's Rx` folder to allow you to make changes to default hotkeys and add optional Autohotkey features.

### Follow these steps to customize the "Dok's Rx Pad.AHK" script:

1. Ensure that the Autohotkey software is installed on your computer - https://autohotkey.com/
2. Open the **`Dok's Rx Pad.AHK`** file in the `Dok's Rx Cabinet\Dok's Rx`folder with any text editor such as "Notepad"; or a script editor such as "SciTE4Autohotkey."
3. Edit the script text for each hotkey feature as desired, following the instruction comments embedded within the script.
4. Save your customized changes to the .AHK script file.
5. Use your customized script by simply launching your saved .AHK file or alternatively, you can compile it into an .EXE file by right-clicking the saved .AHK file and selecting **"Compile Script"**.
    - *This will create an .EXE version of the script that will be able to run on computers that do not have the Autohotkey software installed.*
6. Move your new custom .EXE or .AHK script file into the same folder as the original `Dokter's Prescription.EXE` script file location.

### Customizing the **LAUNCH/TOGGLE PROGRAMS** hotkeys within "Dok's Rx Pad.AHK":

**NOTE:** By default, the **Launch/Toggle Programs** hotkeys in **`Dok's Rx Pad,AHK`** are deactivated to keep this portion of the script in a clean, "template code" format. There are detailed instruction comments within the **`Dok's Rx Pad.AHK`** script file to guide you through customizing the script.

  - The deactivated blocks of code can be activated by removing the `/*`and `*/` brackets for each **Launch/Toggle Programs** hotkey shortcut. 

  - In addition to removing the comment block brackets, you will need to replace portions of the "template code" with the **program name** and **file path** for each desired program. There are detailed instructions on how to customizing these features located in the actual script file via comments labled under: "PLEASE READ - ADJUST FOR YOUR OWN PROGRAMS:""

Once these blocks of code are activated and edited to your personal preference, they will allow you to Launch/Toggle Programs windows using `WIN+(number key)` and/or `WIN+SHIFT+(letter key)` as described previosuly above.

### Calibrating the **MOUSE CLICK HOTKEYS** within "Dok's Rx Pad.AHK":

**NOTE:** By default, the **MOUSE CLICK HOTKEYS** in **`Dok's Rx Pad,AHK`** are deactivated to keep this portion of the script in a "template code" format. There are detailed instruction comments within the **`Dok's Rx Pad.AHK`** script file to guide you through customizing the script.

 - The deactivated blocks of code can be activated by removing the `/*`and `*/` brackets surrounding the block of code for each deactivated block.
 
 - In addition to removing the comment block brackets, you will need to replace portions of the "template code" with the **program name** and **file path** for each desired program. There are detailed instructions on how to customizing these features located in the actual script file via comments labled under: "PLEASE READ - ADJUST FOR YOUR OWN PROGRAMS:""

Once these blocks of code are activated and edited to your personal preference, they will allow you to click on your specified screen coordinates by using a hotkey.

_[Go to the "Optional* "Dokter’s Prescription" hotkeys section](#Optional*-"Dokter’s-Prescription"-hotkeys) above, to reference the keyboard hotkeys for this feature.


#### Follow these steps to calibrate the "Mouse Click Hotkeys" for Spotify and Ableton Live:

1.) PRESS [CTRL+ALT+SHIFT+C] WHILE RUNNING THE "Research Chemicals.AHK" SCRIPT TO IDENTIFY A SPECIFIC MOUSE COORDINATE POSITION TO EDIT THESE HOTKEYS
2.) NOTE THE MOUSE COORDINATES FOR THE X AND Y POSITIONS THAT ARE DISPLAYED IN THE POP-UP MESSAGE BOX
3.) INSERT EACH SPECIFIC SET OF COORDINATES INTO THE "MouseClick" line of code for each MOUSE CLICK HOTKEY LISTED BELOW
4.) YOU HAVE SUCCESSFULLY CUSTOMIZED THE MOUSE CLICK HOTKEYS FOR YOUR OWN SCREEN RESOLUTION. YOU'RE DONE!

### Customizing the **HOTSTRINGS** hotkeys within `Dok's Rx Pad.AHK`:

**NOTE:** By default, the **Hotstrings** in **`Dok's Rx Pad,AHK`** are deactivated to keep this portion of the script in a clean, "template code" format.

- The deactivated blocks of code can be activated by removing the `/*`and `*/` brackets for each **Hotstring** shortcut.

Once these blocks of code are activated and edited to your personal preference, you can trigger specific strings of text with the abbrevated "hotstring" that you have configured.


## Customizing the **Ableton Takeover** script

### Follow these steps to customize the "Ableton Takeover.ahk" script:
1. Ensure that the Autohotkey software is installed on your computer - https://autohotkey.com/
2. Open the **`Ableton Takeover.AHK`** file in the `Dok's Rx Cabinet\Over The Counter\Ableton Takeover`folder with any text editor such as "Notepad"; or a script editor such as "SciTE4Autohotkey."
3. Edit the script text to include/exclude any specific program process names, following the instructions within the `Ableton Takeover README.txt` file.
4. Save your customized changes to the .AHK script file.
5. Use your customized script by simply launching your saved .AHK file or alternatively, you can compile it into an .EXE file by right-clicking the saved .AHK file and selecting **"Compile Script"**.
  - *This will create an .EXE version of the script that will be able to run on computers that do not have the Autohotkey software installed.*
6. Move your new custom .EXE or .AHK script file into the same folder as the original `Ableton Takeover.EXE` script file location.

## Customizing the **Power & Sleep Hotkeys** script

### Follow these steps to customize the "Power & Sleep Hotkeys.AHK" script:
1. Ensure that the Autohotkey software is installed on your computer - https://autohotkey.com/
2. Open the **`Power & Sleep Hotkeys.AHK`** file in the `Dok's Rx Cabinet\Over The Counter\Power & Sleep` folder with any text editor such as "Notepad"; or a script editor such as "SciTE4Autohotkey."
3. Edit the script text to adjust the hotkey commands to meet your desired preferences, following the instructions within the `Power & Sleep Hotkeys README.txt` file.
4. Save your customized changes to the .AHK script file.
5. Use your customized script by simply launching your saved .AHK file or alternatively, you can compile it into an .EXE file by right-clicking the saved .AHK file and selecting **"Compile Script"**.
  - *This will create an .EXE version of the script that will be able to run on computers that do not have the Autohotkey software installed.*
6. Move your new custom .EXE or .AHK script file into the same folder as the original `Power & Sleep Hotkeys.EXE` script file location.

## Customizing the **Research Chemicals** script

### Follow these steps to customize the "Research Chemicals.AHK" script:
1. Ensure that the Autohotkey software is installed on your computer - https://autohotkey.com/
2. Open the **`Research Chemicals.AHK`** file in the `Dok's Rx Cabinet\Research Chemicals` folder with any text editor such as "Notepad"; or a script editor such as "SciTE4Autohotkey."
3. Edit the script text to include any Autohotkey functions that you would like to test.
4. Save your customized changes to the original `Research Chemicals.AHK` script file.
5. You're done. :)

#

*Make sure that your customized version of **`Dok's Rx Pad.AHK`** script is moved into the same folder location of the original `Dokter's Prescription.EXE` script to ensure that it will be able to reference the associated files in the `Dok's Rx Cabinet` folder appropriately.*

**NOTE:** *The `Dok’s Rx (Raw).AHK` copy of the script does not include the sections of code that install the `Dok's Rx Cabinet` folder. You can always launch the original `Dokter's Prescription.EXE` file to re-install  the `Dok's Rx Cabinet` folder if needed. If you need to re-install a single file or folder to `Dok's Rx Cabinet`, re-installing the `Dok's Rx Cabinet` folder will never overwrite any existing files within `Dok's Rx Cabinet` and should never harm any files that have saved changes.*

# Donate

This script is **100% free** to use, manipulate, distribute, or incinerate but I've included a link for **donations** below.

If you find that **Dokter's Prescription** is useful for you, consider making a small donation. (or just enjoy it for free!)

**https://paypal.me/DokRyConn**

# 

Peace,

**Dokter RyConn**
