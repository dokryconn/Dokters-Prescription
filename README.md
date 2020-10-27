# Dokter's Prescription
An Autohotkey script suite to make life easier for Windows users with special focus for **Ableton Live** users.


#	The `Dokter’s Prescription.EXE` script

- The `Dokter’s Prescription.EXE` script enables various kinds of shortcuts for Windows, **Ableton Live** and a few other specific programs:

  - **Ableton Live** - 47 custom shortcuts
  - **Spotify** - 7 custom shortcuts
  - **Google Chrome** - 5 custom shortcuts
  - **Brave Browser** - 5 custom shortcuts
  - **Windows** - 15 custom shortcuts

**NOTE:** The program-specific keyboard shortcuts are only enabled while the corresponding program window is active.

You can reference all default shortcuts that come with the `Dokter's Prescription.EXE` script in the `Dok's Rx Guide.xls` spreadsheet.

- **Launch/Toggle Program** - These shortcuts allow you to launch/toggle specific programs using the following types of keyboard shortcuts:

  - **WIN+(number key)** (i.e. **WIN+1**, **WIN+2**, **WIN+3**, etc..)

  - **WIN+SHIFT+(letter key)** (i.e. **WIN+SHIFT+A**, **WIN+SHIFT+B**, **WIN+SHIFT+C**)

**NOTE:** *By default, `Dokter's Prescription.EXE` includes **Launch/Toggle Program** shortcuts that are **specific for my preferred programs and file locations**. You can reference the default programs that come  with the `Dokter's Prescription.EXE` script in the `Dok's Rx Guide.xls` spreadsheet. You will most likely want to customize these shortcuts for ***your own specific programs***. You can easily do this by editing the `Dok's Rx (Raw).AHK` script located in the `Dok's Rx Cabinet\Dok's Rx` folder.*

*nce you have customized the **Launch/Toggle Program** shortcuts in the `Dok's Rx (Raw).AHK` script, you can compile it into an .EXE file by right-clicking the .AHK file and selecting "Compile Script." This will create an .EXE version of the script that will be able to run on computers without the Autohotkey software installed.*

*Finally, you can replace the original `Dokter's Prescription.EXE` file with your new customized/compiled .EXE script. Make sure that your new compiled .EXE script is moved into the same folder location of the original `Dokter's Prescription.EXE` to ensure that your new .EXE script can reference the associated files in the `Dok's Rx Cabinet` folder appropriately.*

*(See the section, "Customizing the .AHK scripts" below for more info on).*

You can **Suspend/Resume** all features of `Dokter's Prescription.EXE` by toggling with **`[CTRL+ALT+SHIFT+PAUSE]`**.

You can **Exit** this script by pressing **`[CTRL+ALT+SHIFT+END]`**


#	The `Dok’s Rx Cabinet` folder

The `Dok's Rx Cabinet` folder contains the associated files and scripts that are reference by the `Dokter's Prescription.EXE` script.

The `Dok's Rx Cabinet` folder includes the following scripts that can be launched by hotkeys while running the **Dokter's Prescription** script:

- **Launch "Ableton Takeover" script: `[CTRL+ALT+SHIFT+A]`**


- **Launch "Power & Sleep Hotkeys" script: `[CTRL+ALT+SHIFT+P]`**


- **Launch "Research Chemicals" script: `[CTRL+ALT+SHIFT+R]`**

These additional packaged scripts can of course be launched manually from `Dok's Rx Cabinet` without hotkeys and used independently without the "Dokter's Prescription" script running.

*If the “Dok’s Rx Cabinet” folder is not kept within the same location that you are running the `Dokter’s Prescription.EXE` script from, the script may run into a harmless error when a hotkey is pressed and is unable to locate the associated file stored within the `Dok’s Rx Cabinet` folder. If the `Dok's Rx Cabinet` folder gets deleted or moved you can simply recreate it by launching the “Dokter’s Prescription.EXE” file again. Re-launching the `Dokter's Prescription.EXE` script will not overwrite any packaged files in `Dok's Rx Cabinet` if they already exist. In other words, any changes that you have made to the .AHK scripts within `Dok's Rx Cabinet` will not be lost when re-launching `Dokter's Prescription.EXE`*



#	The `Dok’s Rx` folder

The `Dok’s Rx` folder contains the following items related to  **`Dokter's Prescription.EXE`** and **`Dok's Rx (Raw).AHK`**:
- The icon files referenced by the the **`Dok's Rx (Raw).AHK`** script.

- **The `Dok’s Rx Guide.xls` spreadsheet**
  - Includes full index of script functions and additional workbook tabs to reference some native hotkeys for additional programs.

- The **`App Launch Shortcuts`** folder
  - Used for storing created program shortcut files for launching/toggling apps that were installed by Microsoft Store.
  
*The `App Launch Shortcuts` sub-folder within `Dok’s Rx Cabinet\Dok’s Rx` is a location to keep program shortcuts for the "program launch/toggle" optional template code within the **Dokter's Prescription** script.*

*For example, programs that are downloaded from the Microsoft Store are not located in the standard program location. These programs are usually nested within `C:\Program Files\WindowsApps`. Typically, if you attempt the run the programs directly from their native file location, they will not launch properly. For these instances, you can create a program shortcut for these applications and move it into the `App Launch Shortcuts` folder.*

*i.e. Using the filepath:* 
- `"%A_WorkingDir%\Dok's Rx\App Launch Shortcuts\Microsoft To Do"`

*instead of:* 

- `"C:\Program Files\WindowsApps\Microsoft.Todos_2.28.32802.0_x64__8wekyb3d8bbwe\ToDo.exe"`



#	The `Over The Counter` folder

The `Over The Counter` folder contains additional scripts referenced by **`Dokter's Prescription.EXE`** and **`Dok's Rx (Raw).AHK`**. These scripts can also be launched and used independently without the **`Dokter's Prescription.EXE`** or **`Dok's Rx (Raw).AHK`** running. This folder contains:

- The **`Ableton Takeover.EXE`** script:
  - **`Ableton Takeover.EXE`** suspends certain program processes for specified programs while the Ableton Live window is active and resumes the program processes once the Ableton Live window is no longer active.
  - You can launch this script while running **Dokter's Prescription** by pressing **`[CTRL+ALT+SHIFT+A]`**
 
- The **`Power & Sleep Hotkeys.EXE`** script:
  - Launch while running **Dokter's Prescription** with **`[CTRL+ALT+SHIFT+P]`**
  
  
 - The **`Ableton Takeover.AHK`** script:
  - A raw copy of this AHK script is included for editing 

The .EXE version of **Ableton Takeover** includes a *decent* list of *common* programs but can be edited to include the program processes that are typically running while you are using Ableton Live. (See the **`Ableton Takeover.AHK`** bullet section below)

You can edit the raw .AHK version, **`Ableton Takeover.AHK`** to include the program processes of your choice. The .AHK version will require Autohotkey to be installed on your computer to run. However, once Autohotkey is installed on your computer, you can right-click the .AHK file and select “Compile Script” to create an .EXE version for use on all PC computers.

Reference the included `“Ableton Takeover README.txt”` for more information and a specific list of the default programs included in the .EXE version of this script.


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



#	Customizing the .AHK scripts
## `Dok's Rx (Raw).AHK`, `Ableton Takeover.AHK`, and `Power & Sleep Hotkeys`scripts

You can make changes to the default script functions, by editing the raw .AHK copies of these scripts:

`Dok’s Rx Cabinet\Dok’s Rx\Dok’s Rx Script (Raw).AHK`

- **Launch/Toggle Programs** - There are several blocks of deactivated "template code" included within `Dok's Rx (Raw).AHK`. These blocks of code can be activated by removing the `/*`and `*/` brackets for each block. When activated, they allow you to launch/toggle program windows using `WIN+(number key)` and/or `WIN+SHIFT+(letter key)` - In addition to removing the comment brackets, you will need to replace portions of the "template code" with the **program name** and **file path** for each desired program. There are detailed instructions on how to customizing these features located in the actual script file via comments labled under: "PLEASE READ - ADJUST FOR YOUR OWN PROGRAMS:""

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
