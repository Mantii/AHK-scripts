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

randSleepLong(n){
	n_min=%n%
	n_var:=n_min * 3
	n_max:=n_min+n_var
	Random, slptime,%n_min%,%n_max%
	sleep, %slptime%
}
antiSleep(){
Random,b,1,100
percentile:=5
if( b < percentile )
	randSleepLong(60000)
else
	randSleep(100)
}





craftring(){
	randomClick(94, 123 ,4)
}

closeInv(){
randomClick(781,238,2)
}

goBank(){
randomClick(47,388,3)
}

takeMats(){
randomClick(482,450,5)
randSleep(200)
randomClick(220,266,4)
}

closeBank(){
randomClick(513,192,3)
}

goFurnace(){
randomClick(572, 211,2)
}


mainLoop(){
	takeMats()
	randSleep(600)
	goFurnace()
	randSleep(11000)
	craftring()
	randSleep(85000)
	goBank()
	randSleep(11000)
	;antiSleep()
}
equipFRing(){
;dep Inv
randomClick(482,450,5)
randSleep(300)
;Take ring
randomClick(261,266,4)
randSleep(300)
;worn eq
randomClick(135, 229,2)
randSleep(300)
randomClick(597, 248,4)
randSleep(300)
randomClick(135, 229,2)
randSleep(300)
}



theScript(){
	loop{
		randSleep(300)
		equipFRing()
		mainLoop()
		mainLoop()
	
	}
}



exitScript(){
MsgBox, Exiting Script
exitapp
}
reloadScript(){
MsgBox,Reloading Script
reload
}



#numpad5::theScript()
;numpad2::closeInv()
;numpad3::goBank()
;numpad4::takeMats()
;numpad5::closeBank()
;numpad6::goFurnace()
;numpad7::checkCraftXp(50)
#numpad2::reloadScript()
#numpad8::exitScript()