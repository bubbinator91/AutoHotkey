#SingleInstance Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ALT-F12. If hibernate is enabled, hibernate the computer. Otherwise, put the computer to sleep.
!F12::
Run, rundll32.exe powrprof.dll`, SetSuspendState 0`, 1`, 0
return

; ALT-F9. Exits the script.
!F9:
ExitApp