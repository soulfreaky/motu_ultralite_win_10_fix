# MOTU FIX FOR WIN10

### Summary

This artefact solves the crash/recognition issues regarding the MOTU Ultralite MK3 in WIN10 that happen when you disconnect the computer from the soundcard. It does so by unistalling all MOTU drivers, removing all the "ghost" drivers, and then re-installing the drivers.

### Usage
1. Disconnect the audio card from the computer and turn it off.
2. Double click on *scripts\motu_fix.bat*. This will run *motu_fix.ps1* as administrator. A console window will appear, it will remove MOTU drivers and then restart your pc.
3. re-Install the drivers of the MOTU soundcard.
4. Restart your computer (again)
5. Wait until windows is fully loaded, connect the MOTU Audio Card and turn it on. Magic! Now it works.

### Disclaimer
Tested in WIN10 for MOTU Ultralite MK3. I don't take any responsability for any harm made in due to bad use of this artefact.