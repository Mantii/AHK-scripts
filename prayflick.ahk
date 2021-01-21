#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

randomClick(x,y){
x_min:=x-5
x_max:=x+5
y_min:=y-5
y_max:=y+5
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




prayflick(){
randomClick(1662, 171)
loop{
randSleep(450)
randomClick(1662, 171)
randSleep(300)
randomClick(1662, 171)
}
}

exitScript(){
MsgBox,closing Script
exitapp
}

reloadScript(){
MsgBox,Reloading
reload
}
numpad1::prayflick()
numpad2::reloadScript()
numpad9::exitScript()