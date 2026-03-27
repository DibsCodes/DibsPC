### DibsPC Setup Guide

## 1. On First Boot
Shift+F10 to open command prompt during setup. Run the following commands:

```bash
OOBE\BYPASSNRO
```

When starting make sure to select I don't have internet in order to create a local account.

Make sure to deselect all privacy options.

## 2. Update Windows
Press the windows key and type update. Do this and restart until there are no more updates.

remove all programs not necessary. This often includes bloatware that comes with your system. The following script will remove certain windows programs:

- Copilot
- Family
- Clipchamp
- Google Play Games
- News
- Teams
- OneDrive
- Norton/McAfee
- Weather
- Sticky Notes
- Xbox Live
- Outlook

## 3. Set up Terminal
Install a nerd font: [Agave Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Agave.zip)

Allow unsigned scripts

```bash
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```

Install Oh My Posh

```bash
winget install JanDeDobbeleer.OhMyPosh --source winget
```

Make a Powershell profile

```bash
New-Item -Path $PROFILE -Type File -Force
```

Edit the Profile

```bash
notepad $PROFILE
```

Add the following line to set the theme and save & restart terminal
```bash
oh-my-posh init pwsh --config "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/bubblesline.omp.json" | Invoke-Expression
```
## 4. Fix Context Menu
```bash
reg add "HKEY_CURRENT_USER\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /f
```
## 5. Install Mouse Cursor
Download the *Cursors* folder from this repo and click on the install.inf file to install the cursors. Then go to settings and change the mouse cursor to the new cursor.

## 6. Set up Background and Account Profile Icon
Download the *Icons and Wallpapers* folder from this repo. Set the background to the wallpaper you want and set the account profile icon to the icon you want.

## 7. Settings Changes
*Manual for now...need to automate*

### System
**Power and Battery**
- Set 30min timeout
**Multitasking**
- Snap windows Settings
  - uncheck all options
  - dont show tabs
 **Advanced**
- enable end task
- allow scripts without signing in powershell
- install apps from any source
- File Explorer
  - show file extensions
  - show full path
**Clipboard**
- Clipboard History On
  
### Bluetooth and Devices
**Mouse**
- set mouse cursor theme to Volantes Dark
**Touchpad**
- disable lower right hand corner trackpad click
- set three finger gesture to "Change Audio and Volume"

### Personalization
**Background**
- Set Background Image

**Colors**
- Set Accent Color to Rust

**Themes**
- Desktop Icon Settings / Remove Recycling Bin

**Lockscreen**
- Set to Picture
- Set Photo
- Lock Screen Status set to none
- Uncheck "Get fun facts..."

**Start**
- More Recommendations
- Turn off Tips
- Turn off account notifications
- Folders
  - Settings
  - File Explorer
  - Downloads

**Taskbar**
- Searchbox Off
- Taskview Off
- Widgets Off
- Combine Taskbar Buttons = Never

### Accounts
- Set Photo

## 8. Install Apps
Open terminal as an admin and install apps using the following script
```bash
winget install VideoLAN.VLC Discord.Discord Microsoft.PowerToys 9P1741LKHQS9 7zip.7zip Upscayl.Upscayl gimp.gimp.3 OBSProject.OBSStudio audacity.audacity Zen-Team.Zen-Browser Google.Antigravity Microsoft.VisualStudioCode Zoom.Zoom valinet.ExplorerPatcher
```
Install the following apps manually:
- Messages for Web
- WabbitEmu (See folder uploaded to this repo)
- Davinci Resolve
