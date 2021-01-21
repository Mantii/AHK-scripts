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
	n_var:=n_min * 0.4
	n_max:=n_min+n_var
	Random, slptime,%n_min%,%n_max%
	sleep, %slptime%
}
exitScript(){
MsgBox,closing script
exitapp
}

reloadScript(){
MsgBox,reloading script
reload
}


randSleepLong(n){
	n_min=%n%
	n_var:=n_min * 3
	n_max:=n_min+n_var
	Random, slptime,%n_min%,%n_max%
	sleep, %slptime%
}
antiSleep(){
Random,b,1,1000
percentile:=5
if( b < percentile )
	randSleepLong(60000)
else
	randSleep(100)
}


clickRockOne(){
randomClick(378, 422,6)
}
clickRockTwo(){
randomClick(249, 323,4)
}
clickRockThree(){
randomClick(383, 244,4)
}

dropRocks(){
y1:=250

x1:=597
x2:=634
x3:=668
randomClick(x1,y1,2)
randSleep(50)
randomClick(x2,y1,2)
randSleep(50)
randomClick(x3,y1,2)
randSleep(50)
}

miner(){
	loop{
		clickRockOne()
		randSleep(1600)
		clickRockTwo()
		randSleep(1600)
		clickRockThree()
		randSleep(1600)
		dropRocks()
		antiSleep()
	}
}



#numpad8::reloadScript()
#numpad5::miner()
#numpad2::exitScript()