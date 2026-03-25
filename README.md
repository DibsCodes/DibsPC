# DibsPC
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

```bash
Get-AppxPackage *xbox* | Remove-AppxPackage
# more to come
```

## 3. Set up Terminal

## 4. Install Mouse Cursor

## 5. Set up Background and Account Profile Icon
