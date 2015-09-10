# AutoHotkey
My collection of AutoHotkey scripts that I've written.

## Win10VirtualDesktops
Creates keyboard shortcuts for easily navigating the virtual desktops introduces in Windows 10.
On startup, an options menu is opened that asks you how many desktops you will be using. This
is because the script cannot communicate directly with windows to see how many desktops you
have open, and which desktop you are currently on. It keeps track of this by using an internal
variable which starts at 1 and is incremented when going to desktops on the right, and
decremented when going to desktops on the left. The script can be exited through the options
menu.

- ALT-1, ALT-2, ALT-3, ..., ALT-0 switches to desktop 1, desktop 2, desktop 3, ..., and desktop 10.
- ALT-Left Arrow switches to the desktop on the left.
- ALT-Right Arrow switches to the desktop on the right.
- Mouse Back Button will switch to the desktop on the left if the mouse cursor is on the task bar.
- Mouse Forward Button will switch to the desktop on the right if the mouse cursor is on the task bar.
- ALT-F9 opens the options menu.

## HibernateSleepHotkey
Binds a key to a command that can either hibernate or sleep your PC. The command that is used
will hibernate your PC if hibernate is enable. If hibernate is disabled, it will sleep your
PC instead.

- ALT-F12 will hibernate or sleep your PC.
- ALT-F11 will exit the script.

## SoundOutputSwitcher
Binds a key to a command that will switch between two of the sound output devices found under
Control Panel->Sound. In my case, it is set to switch between the first and fourth devices. If
you want to change it, change the numbers on line 15 and line 17.

- CTRL-F12 will switch the sound output devices.
- ALT-F11 will exit the script.

## AllInOne
An all in one script that combines all of the above scripts into one. The only difference in
functionality is that the script can only be exited through the options menu, and not the
ALT-F11 hotkey.