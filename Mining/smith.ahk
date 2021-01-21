#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


randomClick(x,y){
x_min:=x-2
x_max:=x+3
y_min:=y-2
y_max:=y+3
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
checkCraftXp(tim){
	sltime:=%tim%-1000
	randomClick(744,296)
	randSleep(1000)
	randomClick(638,348)
	randSleep(%sltime%)
	randomClick(744,296)

}


antiSleep(n){
Random,b,1,100
percentile:=7
if( b < percentile )
	checkCraftXp(%n%)
else
	sleep, %n%
}



barsmith(){
	randomClick(94, 123 )
}

closeInv(){
randomClick(781,238)
}

goBank(){
randomClick(39,382)
}

takeMats(){
randomClick(473,437)
randSleep(100)
randomClick(212,258)
}
closeBank(){
randomClick(513,192)
}
goFurnace(){
randomClick(569,203)
}


smithBars(){
loop{
	barsmith()
	antiSleep(85000)
	goBank()
	antiSleep(11000)
	takeMats()
	randSleep(600)
	closeBank()
	randSleep(200)
	goFurnace()
	antiSleep(11000)
}
}

exitScript(){
MsgBox,closing Script
exitapp
}
#numpad5::smithBars()
;numpad2::closeInv(),numpad3::goBank(),numpad4::takeMats(),numpad5::closeBank(),numpad6::goFurnace(),numpad8::reload
#numpad8::exitScript()



