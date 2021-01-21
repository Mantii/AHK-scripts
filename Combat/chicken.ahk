#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


randomClick(x,y,v){
x_min:=x-v
x_max:=x+v
y_min:=y-v
y_max:=y+v
Random,clickx , %x_min%, %x_max%
Random, clicky, %y_min%, %y_max%
Random, sleepTime,100,300
ControlClick, x%clickx% y%clicky%, RuneLite
sleep, %sleepTime%
}


randSleep(n){
n_min=%n%
n_var:=n_min * 0
n_max:=n_min+n_var
Random, slptime,%n_min%,%n_max%
sleep, %slptime%
}
exitScript(){
MsgBox,closing Script
exitapp
}

reloadScript(){
MsgBox,Reloading
reload
}
findrat(){
PixelSearch, Rx, Ry, 0, 0, 5000, 5000, 0x0000FF, 7, Fast
if ErrorLevel
	MsgBox, Not Found
else
	MsgBox, Found at %Rx% , %Ry%
}


numpad1::findrat()
numpad2::randomClick(50,50,5)