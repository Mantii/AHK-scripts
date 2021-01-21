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
ControlClick, x%clickx% y%clicky%, BlueStacks
sleep, %sleepTime%
}
randSleep(n){
n_min=%n%
n_var:=n_min * 0.2
n_max:=n_min+n_var
Random, slptime,%n_min%,%n_max%
sleep, %slptime%
}

clickOreOne(){
randomClick(556,367)
}

clickOreTwo(){
randomClick(401,450)
}

dropOres(){
randomClick(595,247)
randSleep(50)
randomClick(633,247)
randSleep(50)
randomClick(667,247)
randSleep(50)
randomClick(705,247)
randSleep(50)

randomClick(595,280)
randSleep(50)
randomClick(633,280)
randSleep(50)
randomClick(667,280)
randSleep(50)
randomClick(705,280)
randSleep(50)

randomClick(595,313)
randSleep(50)
randomClick(633,313)
randSleep(50)
randomClick(667,313)
randSleep(50)
randomClick(705,313)
randSleep(50)
}

isMined(){
rockColour:=0x121A2D
PixelGetColor, color, 598, 248
if(color==rockColour){
	return true
}
return false
}

miner(slp){

loop{
	clickOreOne()
	randSleep(slp)
	clickOreTwo()
	randSleep(slp)
	clickOreOne()
	randSleep(slp)
	clickOreTwo()
	randSleep(slp)
	clickOreOne()
	randSleep(slp)
	clickOreTwo()
	randSleep(slp)
	clickOreOne()
	randSleep(slp)
	clickOreTwo()
	randSleep(slp)
	clickOreOne()
	randSleep(slp)
	clickOreTwo()
	randSleep(slp)
	clickOreOne()
	randSleep(slp)
	clickOreTwo()
	randSleep(slp)	
	dropOres()
	}
}
exitScript(){
MsgBox,closing Script
exitapp
}
#numpad5::miner(5000)
#numpad8::exitScript()
