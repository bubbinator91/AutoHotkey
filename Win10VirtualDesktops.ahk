#SingleInstance Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Variables
mouse_window_id := ""
mouse_window_control := ""

; Hotkeys

; WIN-Left CTRL. Switches to the desktop to the left.
#LCtrl::
Send ^#{Left}
return

; WIN-Left ALT. Switches to the desktop to the right.
#LAlt::
Send ^#{Right}
return

; Mouse Back Button. Switches to the desktop on the left, as long as the cursor is on the taskbar.
$XButton1::
MouseGetPos, , , mouse_window_id, mouse_window_control
if (mouse_window_control = "MSTaskListWClass1") {
	Send ^#{Left}
} else {
	SendInput {XButton1}
}
return

; Mouse Forward Button. Switches to the desktop on the right, as long as the cursor is on the taskbar.
$XButton2::
MouseGetPos, , , mouse_window_id, mouse_window_control
if (mouse_window_control = "MSTaskListWClass1") {
	Send ^#{Right}
} else {
	SendInput {XButton2}
}
return

; ALT-F9. Exits the script.
!F9::
ExitApp

; End Hotkeys
