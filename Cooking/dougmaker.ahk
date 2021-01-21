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

takeMats(){
	randSleep(100)
	randomClick(482,450,3)
	randSleep(300)
	randomClick(261,266,2)
	randSleep(300)
	randomClick(220,266,2)
}

closeBank(){
randomClick(513,192,3)
}

openBank(){
randomClick(530, 256,5)
}


combine(){
	x1:=597
	y4:=345
	y5:=377
	randomClick(x1,y5,2)
	randSleep(200)
	randomClick(x1,y4,2)
	randSleep(1000)
	randomClick(226, 128,5)
}

doughMaker(){
	loop{
		takeMats()
		randSleep(200)
		closeBank()
		randSleep(100)
		combine()
		randSleep(17000)
		openBank()
		randSleep(350)
}
}
numpad1::doughMaker()
numpad8::reload
numpad9::exitapp
