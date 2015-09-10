#SingleInstance Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; CTRL-F12. Switches between the first and last sound output device in the control panel.
^F12::
toggle:=!toggle
Run, mmsys.cpl
Winhide,Sound
WinWait,Sound
if toggle
    ControlSend,SysListView321,{Down 1}
Else
    ControlSend,SysListView321,{Down 4}
sleep 50
ControlClick,&Set Default,Sound,,,,na
sleep 50
ControlClick,OK,Sound,,,,na
sleep 50
WinClose,Sound
return

; ALT-F11. Exits the script.
!F11:
ExitApp