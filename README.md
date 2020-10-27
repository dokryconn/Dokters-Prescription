# Dokter's Prescription
An Autohotkey script suite to make life easier for Windows users with special focus for **Ableton Live** users.


#	The `Dokter’s Prescription.EXE` script

`Dokter’s Prescription.EXE` enables several kinds of shortcuts for Windows and spedific programs. 

- **Ableton Live** - 47 custom shortcuts
- **Spotify** - 7 custom shortcuts
- **Google Chrome** - 5 custom shortcuts
- **Brave Browser** - 5 custom shortcuts
- **Windows** - 15 custom shortcuts

**NOTE:** The program-specific keyboard shortcuts are only enabled while the corresponding program window is active.

- **Launch/Toggle Programs** - These features allow you to launch/toggle specified programs using these groups of keyboard shortcuts:

`WIN+(number key)` - (i.e. `WIN+1`, `WIN+2`, `WIN+3`, etc..)

`WIN+SHIFT+(letter key)` - (i.e. `WIN+SHIFT+A`, `WIN+SHIFT+B`, `WIN+SHIFT+C`)

**NOTE:** By default, `Dokter's Prescription.EXE` includes shortcuts that are specific to my preferred programs and file locations. You can reference the default **Launch/Toggle Programs** configurations that come inside of `Dokter's Prescription.EXE` by reviewing the included `Dok's Rx Guide.xls` spreadsheet. You will most likely want to customize these shortcuts for your own specific programs. You can easily do this by editing the `Dok's Rx Script (Raw).AHK` script. (See "Editing the `Dok's Rx Script (Raw).AHK`script" below for more info.)

Once you have customized the shortcuts within `Dok's Rx Script (Raw).AHK`, you may compile it into a .EXE file by right-clicking the .AHK file and selecting "Compile Script." 

This will create a .EXE version of the script that you can run on computers without Autohotkey installed. You can also replace the original `Dokter's Prescription.EXE` file with your newcustomized and compiled script.

See "Editing the `Dok's Rx Script (Raw).AHK`script" below for more info.

- **Suspend/Resume `Dokter's Prescription.EXE`** - **`[CTRL+ALT+SHIFT+PAUSE]`**



#	The `Dok’s Rx Cabinet` folder

The `Dok’s Rx Cabinet` folder is created when `Dokter’s Prescription.EXE` is launched. The `Dok's Rx Cabinet` folder is the main directory for all additional scripts/files associated with the **Dokter’s Prescription** script.

The `Dok's Rx Cabinet` folder includes the following scripts that can be launched with hotkeys while running the **Dokter's Prescription** script:

- **Launch "Ableton Takeover" script: `[CTRL+ALT+SHIFT+A]`**


- **Launch "Power & Sleep Hotkeys" script: `[CTRL+ALT+SHIFT+P]`**


- **Launch "Research Chemicals" script: `[CTRL+ALT+SHIFT+R]`**

These additional packaged scripts can of course be launched manually without using these hotkeys and independently ran without the "Dokter's Prescription" script.

**NOTE:**  If the “Dok’s Rx Cabinet” folder is not kept within the same location that you are running the `Dokter’s Prescription.EXE` script from, the script may run into a harmless error when a hotkey is pressed and is unable to locate the associated file stored within the `Dok’s Rx Cabinet` folder. If the `Dok's Rx Cabinet` folder gets deleted or moved you can simply recreate it by launching the “Dokter’s Prescription.EXE” file again. Re-launching the `Dokter's Prescription.EXE` script will not overwrite any packaged files in `Dok's Rx Cabinet` if they already exist. In other words, any changes that you have made to the .AHK scripts within `Dok's Rx Cabinet` will not be lost when re-launching `Dokter's Prescription.EXE`



#	The `Dok’s Rx` folder

The `Dok’s Rx` folder is stored within `Dok’s Rx Cabinet`; this folder contains:
- **The `Dok’s Rx Guide.xls` spreadsheet**
(Includes full index of script functions and additional tabs to reference native program hotkeys)

- The **`App Launch Shortcuts`** folder
(Used for storing created program shortcut files for launching/toggling apps that were installed by Microsoft Store)

- The icon files for the **`Dokter’s Prescription.AHK`** script.

You can reference the `Dok’s Rx Guide.xls` spreadsheet for a complete list of all default functions that are included within the script. 

The `App Launch Shortcuts` sub-folder within `Dok’s Rx Cabinet\Dok’s Rx` is a location to keep program shortcuts for the "program launch/toggle" optional template code within the **Dokter's Prescription** script. 

For example, programs that are downloaded from the Microsoft Store are not located in the standard program location. These programs are usually nested within `C:\Program Files\WindowsApps`. Typically, if you attempt the run the programs directly from their native file location, they will not launch properly. For these instances, you can create a program shortcut for these applications and move it into the `App Launch Shortcuts` folder.

i.e. Using the filepath: 
- `"%A_WorkingDir%\Dok's Rx\App Launch Shortcuts\Microsoft To Do"`

instead of 

- `"C:\Program Files\WindowsApps\Microsoft.Todos_2.28.32802.0_x64__8wekyb3d8bbwe\ToDo.exe"`



#	The `Over The Counter` folder

The `Over The Counter` folder is used to store additional scripts that can be ran separately.

This folder contains the following optional scripts:

- **Ableton Takeover** Launch while running **Dokter's Prescription** with `**[CTRL+ALT+SHIFT+A]**`
- **"Power & Sleep Hotkeys** Launch while running **Dokter's Prescription** with `**[CTRL+ALT+SHIFT+P]**`

- The **Ableton Takeover** script suspends certain program processes for specified programs while the Ableton Live window is active and resumes the program processes once the Ableton Live window is no longer active.

The .EXE version of **Ableton Takeover** includes a "decent" list of "common" programs but should be edited to list specific programs based on which programs you typically have running specifically.

It is recommended that the raw .AHK version of **Ableton Takeover** is edited for customization. The .AHK version will require Autohotkey to be installed on your computer to run. However, once Autohotkey is installed on your computer, you can right-click the .AHK file and select “Compile Script” to create a .EXE version for use on all computers.

Reference the `“Ableton Takeover README.txt”` for more information and a specific list of the default programs included in the .EXE version of this script.


- The **“Power & Sleep Hotkeys”** script assigns hotkeys to sleep, hibernate, or shutdown your PC.  
See the `Power & Sleep Hotkeys README.txt` for more information.




# The `Research Chemicals` folder

The `The Research Chemicals` folder within the `Dok’s Rx Cabinet` folder contains the `Research Chemicals.AHK` script and associated icons.

- **Research Chemicals** - ** Launch while running **"Dokter's Prescription"** with `**[CTRL+ALT+SHIFT+R]**`

The purpose of the `Research Chemicals.AHK` script is to have a “test script” readily available for Autohotkey script development/testing. Autohotkey will need to be installed on your computer to run this script. You can edit this script with Autohotkey functions that you would like to test but do not want to commit into your main running script.

By default, the only functions included in the Research Chemicals script are:

**LAUNCH  A TEST MESSAGE BOX: `[CTRL+ALT+SHIFT+T]`**

**IDENTIFY CURSOR POSITION: `[CTRL+ALT+SHIFT+C]`**

**EXIT SCRIPT: `[CTRL+ALT+SHIFT+DEL]`**

**SAVE AND RELOAD SCRIPT: `[CTRL+S]`**



#	The `The Matrix` folder

This folder contains the `The Matrix.EXE` script package which is nearly identical to the Live Enhancement Script (LES) via https://enhancementsuite.me/ but with a few adjustments to the Windows tray icon and tray menu items, all within the theme of the 1999 film, The Matrix. Take the red pill. 



#	Editing the `Dok's Rx Script (Raw).AHK`script

You can make changes to the default script functions, by editing the raw .AHK copy of this script:

`Dok’s Rx Cabinet\Dok’s Rx\Dok’s Rx Script (Raw).AHK`

- **Launch/Toggle Programs** - There are several blocks of deactivated "template code" included within `Dok's Rx Script (Raw).AHK`. These blocks of code can be activated by removing the `/*`and `*/` brackets for each block. When activated, they allow you to launch/toggle program windows using `WIN+(number key)` and/or `WIN+SHIFT+(letter key)` - In addition to removing the comment brackets, you will need to replace portions of the "template code" with the **program name** and **file path** for each desired program. There are detailed instructions on how to customizing these features located in the actual script file via comments labled under: "PLEASE READ - ADJUST FOR YOUR OWN PROGRAMS:""

**NOTE:** You will need Autohotkey installed on your computer to run the .AHK file as an active script. - https://www.autohotkey.com

Once Autohotkey is installed, you will also have the option to compile your customized .AHK script file into an .EXE file by right-clicking the .AHK file and selecting “Compile Script.” This will allow you to use your customized script by launching the .EXE file on any computer, even if Autohotkey is not installed on that computer.

You are encouraged to change and experiment using the `Dok’s Rx Script (Raw).AHK` copy to customize it for your needs or remove any functions that you do not find useful. You can edit the .AHK script using Notepad, Notepad++, the SciTE4Autohotkey script editor, etc.

The `Dok’s Rx Script (Raw).AHK` file will not install or launch any of the packaged scripts/content that is included in the compiled `Dokter’s Prescription.EXE` version.



#	Additional Notes:

The **Dokter's Prescription** script contains a variety of simple, useful functions and includes detailed comments within the code to help you understand the script functions to help you customize it to meet your preference. You can simply reference the comments within the .AHK script file to help guide you through customizing everything for your specific needs.

While customizing the **Doketer's Prescription** script, you can also use the `Dok’s Rx Guide.xls` spreadsheet file as a template to track any specific changes that you have made while editing the script.

# Donate

This script is **100% free** to use, manipulate, distribute, or incinerate but I've included a link for **donations** below - if you find that `Dokter's Prescription` is useful for you, make a small donation. (or just enjoy it for free!)

Peace,

**Dokter RyConn**

**https://paypal.me/DokRyConn**
