# Dokter's Prescription
An Autohotkey script suite to make life easier for Windows and **Ableton Live** users.


#	The `Dokter’s Prescription.EXE` script
- The `Dokter’s Prescription.EXE` script enables several different shortcuts for Windows, Ableton Live, and other specific programs:

  - **Ableton Live** - 47 custom shortcuts
  - **Spotify** - 7 custom shortcuts
  - **Google Chrome** - 5 custom shortcuts
  - **Brave Browser** - 5 custom shortcuts
  - **Windows** - 15 custom shortcuts

Reference the **`Dok's Rx Guide.xls`** spreadsheet for the complete list of keyboard shortcuts included in `Dokter's Prescription.EXE`.

*The program-specific keyboard shortcuts are only enabled while the corresponding program window is active.*


- **Launch/Toggle Program** - These shortcuts allow you to launch/toggle specific programs using the following types of keyboard shortcuts:

  - **WIN+** *number key* (i.e. **WIN+1**; **WIN+2**; **WIN+3**; etc.)

  - **WIN+SHIFT+** *letter key* (i.e. **WIN+SHIFT+A**; **WIN+SHIFT+B**; **WIN+SHIFT+C**; etc.)

Reference the `Dok's Rx Guide.xls` spreadsheet for the complete list of **Launch/Toggle Program** shortcuts included by default in `Dokter's Prescription.EXE`.

- **Suspend/Resume** all features of `Dokter's Prescription.EXE` by toggling with **`[CTRL+ALT+SHIFT+PAUSE]`**.

- **Exit** this script by pressing **`[CTRL+ALT+SHIFT+END]`**

*See the "**Customizing the scripts**" section below, for details on how to customize features of this script*



#	The `Dok’s Rx Cabinet` folder

The `Dok's Rx Cabinet` folder contains the associated files and scripts that are referenced by the `Dokter's Prescription.EXE` and `Dok's Rx (Raw).AHK` scripts.

The following scripts are included in the`Dok's Rx Cabinet` folder:

- **Ableton Takeover**
- **Launch "Power & Sleep Hotkeys**
- **Research Chemicals**

These additional packaged scripts can of course be launched manually from `Dok's Rx Cabinet` without hotkeys and used independently without the "Dokter's Prescription" script running.

*If the “Dok’s Rx Cabinet” folder is not kept within the same location that you are running the `Dokter’s Prescription.EXE` script from, the script may run into an error if a hotkey is pressed and the script is unable to locate the associated file within the `Dok’s Rx Cabinet` folder. In regard to this, if the `Dok's Rx Cabinet` folder gets moved or deleted, you can simply recreate it by launching the “Dokter’s Prescription.EXE” file again. Re-launching the `Dokter's Prescription.EXE` script will not overwrite any existing packaged files in `Dok's Rx Cabinet`. In other words, any changes that you have made to files within `Dok's Rx Cabinet` will not be lost by re-launching `Dokter's Prescription.EXE`*



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
  - **`Ableton Takeover.EXE` suspends certain program processes** of specified programs while the Ableton Live window is **active** and **resumes the program processes** once the Ableton Live window is **not active**.
  - **Launch Script** while running **Dokter's Prescription** - **`[CTRL+ALT+SHIFT+A]`**
  - **Exit Script** - **`CTRL+ALT+SHIFT+DEL`**

An .AHK version of this script is included within `Dok's Rx Cabinet\Over The Counter\Ableton Takeover` for optional customizing. Although the .EXE version of **Ableton Takeover** includes a *decent* list of *common* programs, you can edit this script to include the program processes that are typically running while you are using Ableton Live. (See "Customizing the scripts" section below.)

Reference the included `“Ableton Takeover README.txt”` for more info and a list of the default program processes included in the .EXE version of this script.
 
- The **`Power & Sleep Hotkeys.EXE`** script:
  - **Launch Script** while running **Dokter's Prescription** - **`[CTRL+ALT+SHIFT+P]`**
  
  - **Sleep PC** - **`CTRL+ALT+SHIFT+ESC`**
  - **Resart PC** - **`CTRL+ALT+SHIFT+F5`**
  - **Hibernate PC** - **`CTRL+ALT+SHIFT+F9`**
  - **Shutdown PC** - **`CTRL+ALT+SHIFT+F12`**
  
  - **Exit Script** this script by pressing **`CTRL+ALT+SHIFT+HOME`**

An .AHK version of this script is included within `Dok's Rx Cabinet\Over The Counter\Power & Sleep` for optional customizing. Although the .EXE version of **Power & Sleep Hotkeys** includes specific hotkey functions, you can edit this script to adjust the specific hotkeys used  that are typically running while you are using Ableton Live. (See "Customizing the scripts" section below.)

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



#	Customizing the scripts
You can customize the any of the default script functions, by editing the raw .AHK files for these scripts. 


## Customizing the **Dokter's Prescription** script

By default, the `Dokter's Prescription.EXE` script includes **Launch/Toggle Program** shortcuts that are **setup for my preferred programs and file locations**. You will most likely want to customize these shortcuts for ***your own specific programs*** by editing the included `Dok's Rx (Raw).AHK` version of the script. All of the specific default **Launch/Toggle Program** shortcuts have been deactivated in the `Dok's Rx (Raw).AHK` version of the script to keep it in clean, "template code" format. Additionally, there are detailed instruction comments within the `Dok's Rx (Raw).AHK` file to help with editing / customizing.

1. Ensure that the Autohotkey software is installed on your computer - https://autohotkey.com/
2. Open the **`Dok's Rx (Raw).AHK`** in the `Dok's Rx Cabinet\Dok's Rx`folder with any text editor such as `Notepad`; or a script editor such as `SciTE4Autohotkey`.
3. Edit the script text for each shortcut feature as desired, following the instruction comments embedded within the script.
4. Save your customized changes to the .AHK script file.
5. You can either use your customized script by simply launching your saved .AHK file or alternatively, you can compile your script to an .EXE file by right-clicking the .AHK file in "File Explorer" and selecting "Compile Script" from the menu options.
  - *This will create an .EXE version of the script that will be able to run on computers that do not have the Autohotkey software installed.*
6. **Lastly, you can move your new, customized .EXE or .AHK script file into the same folder as the main `Dokter's Prescription.EXE` script file.**

- Customizing the **Launch/Toggle Programs** shortcuts within `Dok's Rx (Raw).AHK`:
There are several blocks of deactivated "template code" included within `Dok's Rx (Raw).AHK` for these shortcuts. 

  - These deactivated blocks of code can be activated by removing the `/*`and `*/` brackets for each hotkey shortcut. Once these blocks of code are activated, they allow you to launch/toggle program windows using `WIN+(number key)` and/or `WIN+SHIFT+(letter key)` as described previosuly above.

  - In addition to removing the comment brackets, you will need to replace portions of the "template code" with the **program name** and **file path** for each desired program. There are detailed instructions on how to customizing these features located in the actual script file via comments labled under: "PLEASE READ - ADJUST FOR YOUR OWN PROGRAMS:""

*Make sure that your customized version of **Dokter's Presciprtion** is moved into the same folder location of the main `Dokter's Prescription.EXE` script to ensure that it will be able to reference the associated files in the `Dok's Rx Cabinet` folder appropriately.*

**NOTE:** *The `Dok’s Rx (Raw).AHK` copy of the script does not include the sections of code that installs the `Dok's Rx Cabinet` folder. You can always launch the original `Dokter's Prescription.EXE` file to have the `Dok's Rx Cabinet` folder installed. Re-installing the `Dok's Rx Cabinet` folder will never overwrite any existing files within `Dok's Rx Cabinet` so it should never cause harm to any files that you have made changes to in this folder*

## Customizing the **Ableton Takeover** script

By default, the `Ableton takeover.AHK` script includes **Launch/Toggle Program** shortcuts that are **setup for my preferred programs and file locations**. You will most likely want to customize these shortcuts for ***your own specific programs*** by editing the included `Dok's Rx (Raw).AHK` version of the script. All of the specific default **Launch/Toggle Program** shortcuts have been deactivated in the `Dok's Rx (Raw).AHK` version of the script to keep it in clean, "template code" format. Additionally, there are detailed instruction comments within the `Dok's Rx (Raw).AHK` file to help with editing / customizing.

1. Ensure that the Autohotkey software is installed on your computer - https://autohotkey.com/
2. Open the **`Dok's Rx (Raw).AHK`** in the `Dok's Rx Cabinet\Dok's Rx`folder with any text editor such as `Notepad`; or a script editor such as `SciTE4Autohotkey`.
3. Edit the script text for each shortcut feature as desired, following the instruction comments embedded within the script.
4. Save your customized changes to the .AHK script file.
5. You can either use your customized script by simply launching your saved .AHK file or alternatively, you can compile your script to an .EXE file by right-clicking the .AHK file in "File Explorer" and selecting "Compile Script" from the menu options.
  - *This will create an .EXE version of the script that will be able to run on computers that do not have the Autohotkey software installed.*
6. **Lastly, you can move your new, customized .EXE or .AHK script file into the same folder as the main `Dokter's Prescription.EXE` script file.**


#	Additional Notes:

The **Dokter's Prescription** script contains a variety of simple, useful functions and includes detailed comments within the code to help you understand the script functions, in hopes to help you customize it to your preference.

While customizing the **Doketer's Prescription** script, you can also use the `Dok’s Rx Guide.xls` spreadsheet file as a template to track any specific changes that you have made while editing the script.

# Donate

This script is **100% free** to use, manipulate, distribute, or incinerate but I've included a link for **donations** below - if you find that `Dokter's Prescription` is useful for you, make a small donation. (or just enjoy it for free!)

Peace,

**Dokter RyConn**

**https://paypal.me/DokRyConn**
