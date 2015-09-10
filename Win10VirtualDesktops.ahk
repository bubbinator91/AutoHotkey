#SingleInstance Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Variables
mouse_window_id := ""
mouse_window_control := ""
current_desktop := 1
total_desktops := 1

; Startup. Immediately loads the Options label.
Gosub, Options
return

; Labels

Options:
Gui, Destroy
Gui, Add, Text,, Number of desktops:
Gui, Add, Text, W200, WARNING: Please make sure you actually have the same number of desktops actually open, or things may break. If things break, manually navigate to desktop 1 and then click the Fix button.
Gui, Add, Edit, vtotal_desktops ym, %total_desktops%
Gui, Add, Button, default, OK
Gui, Add, Button,, Fix
Gui, Add, Button,, Quit
Gui, Show,, Desktop Options
return

GuiClose:
ButtonOK:
Gui, Submit
return

ButtonFix:
Loop, 100 {
	Send ^#{Left}
}
current_desktop := 1
return

ButtonQuit:
ExitApp

; End Labels

; Hotkeys

;!p::
;ListVars
;return

; ALT-1. Switches to desktop 1.
!1::
if (current_desktop > 1) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 1) {
			break
		}
	}
}
return

; ALT-2. Switches to desktop 2, if it exists, according to the total_desktops option.
!2::
if (current_desktop > 2) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 2) {
			break
		}
	}
} else if (current_desktop < 2) {
	Loop {
		if (current_desktop = total_desktops) {
			break
		}
		Send ^#{Right}
		Sleep, 100
		current_desktop := (current_desktop + 1)
		if (current_desktop = 2) {
			break
		}
	}
}
return

; ALT-3. Switches to desktop 3, if it exists, according to the total_desktops option.
!3::
if (current_desktop > 3) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 3) {
			break
		}
	}
} else if (current_desktop < 3) {
	Loop {
		if (current_desktop = total_desktops) {
			break
		}
		Send ^#{Right}
		Sleep, 100
		current_desktop := (current_desktop + 1)
		if (current_desktop = 3) {
			break
		}
	}
}
return

; ALT-4. Switches to desktop 4, if it exists, according to the total_desktops option.
!4::
if (current_desktop > 4) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 4) {
			break
		}
	}
} else if (current_desktop < 4) {
	Loop {
		if (current_desktop = total_desktops) {
			break
		}
		Send ^#{Right}
		Sleep, 100
		current_desktop := (current_desktop + 1)
		if (current_desktop = 4) {
			break
		}
	}
}
return

; ALT-5. Switches to desktop 5, if it exists, according to the total_desktops option.
!5::
if (current_desktop > 5) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 5) {
			break
		}
	}
} else if (current_desktop < 5) {
	Loop {
		if (current_desktop = total_desktops) {
			break
		}
		Send ^#{Right}
		Sleep, 100
		current_desktop := (current_desktop + 1)
		if (current_desktop = 5) {
			break
		}
	}
}
return

; ALT-6. Switches to desktop 6, if it exists, according to the total_desktops option.
!6::
if (current_desktop > 6) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 6) {
			break
		}
	}
} else if (current_desktop < 6) {
	Loop {
		if (current_desktop = total_desktops) {
			break
		}
		Send ^#{Right}
		Sleep, 100
		current_desktop := (current_desktop + 1)
		if (current_desktop = 6) {
			break
		}
	}
}
return

; ALT-7. Switches to desktop 7, if it exists, according to the total_desktops option.
!7::
if (current_desktop > 7) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 7) {
			break
		}
	}
} else if (current_desktop < 7) {
	Loop {
		if (current_desktop = total_desktops) {
			break
		}
		Send ^#{Right}
		Sleep, 100
		current_desktop := (current_desktop + 1)
		if (current_desktop = 7) {
			break
		}
	}
}
return

; ALT-8. Switches to desktop 8, if it exists, according to the total_desktops option.
!8::
if (current_desktop > 8) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 8) {
			break
		}
	}
} else if (current_desktop < 8) {
	Loop {
		if (current_desktop = total_desktops) {
			break
		}
		Send ^#{Right}
		Sleep, 100
		current_desktop := (current_desktop + 1)
		if (current_desktop = 8) {
			break
		}
	}
}
return

; ALT-9. Switches to desktop 9, if it exists, according to the total_desktops option.
!9::
if (current_desktop > 9) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 9) {
			break
		}
	}
} else if (current_desktop < 9) {
	Loop {
		if (current_desktop = total_desktops) {
			break
		}
		Send ^#{Right}
		Sleep, 100
		current_desktop := (current_desktop + 1)
		if (current_desktop = 9) {
			break
		}
	}
}
return

; ALT-10. Switches to desktop 10, if it exists, according to the total_desktops option.
!0::
if (current_desktop > 10) {
	Loop {
		Send ^#{Left}
		Sleep, 100
		current_desktop := (current_desktop - 1)
		if (current_desktop = 10) {
			break
		}
	}
} else if (current_desktop < 10) {
	Loop {
		if (current_desktop = total_desktops) {
			break
		}
		Send ^#{Right}
		Sleep, 100
		current_desktop := (current_desktop + 1)
		if (current_desktop = 10) {
			break
		}
	}
}
return

; ALT-Left Arrow. Switches to the desktop to the left.
!Left::
if (current_desktop > 1) {
	Send ^#{Left}
	current_desktop := (current_desktop - 1)
}
return

; ALT-Right Arrow. Switches to the desktop to the right.
!Right::
if (current_desktop < total_desktops) {
	Send ^#{Right}
	current_desktop := (current_desktop + 1)
}
return

; Mouse Back Button. Switches to the desktop on the left, as long as the cursor is on the taskbar.
$XButton1::
MouseGetPos, , , mouse_window_id, mouse_window_control
if (mouse_window_control = "MSTaskListWClass1") {
	Send ^#{Left}
	current_desktop := (current_desktop - 1)
}
else
	SendInput {XButton1}
return

; Mouse Forward Button. Switches to the desktop on the right, as long as the cursor is on the taskbar.
$XButton2::
MouseGetPos, , , mouse_window_id, mouse_window_control
if (mouse_window_control = "MSTaskListWClass1") {
	if (current_desktop < total_desktops) {
		Send ^#{Right}
		current_desktop := (current_desktop + 1)
	}
} else {
	SendInput {XButton2}
}
return

; ALT-F9. Opens the options menu (same menu you see on startup).
!F9::
Gosub, Options
return

; End Hotkeys
