#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
e::
click
MouseMove 175, -200, 1, R
sleep 1000
click
MouseMove -175, +200, 1, R
return
toggle = 0 ; Toggle OFF


x:: ; Press X to toggle On/Off
SoundBeep
 ; Random Pauses.
Random,ST, 273,392
Random,SD, 135, 279
Random,MD, 3246, 2982
Random,BD, 8646, 7594


Toggle := !Toggle
While Toggle{
 
    sleep, %ST%
	click
	MouseMove 175, -200, 1, R
	sleep 1000
	click
	MouseMove -175, +200, 1, R
	return
	toggle = 0 ; Toggle OFF
	}