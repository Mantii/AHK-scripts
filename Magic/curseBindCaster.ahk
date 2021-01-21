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

clickCurse(){
randomClick(121,363,3)
randSleep(50)
randomClick(410,192,3)
}

clickBind(){
randomClick(181,369,3)
randSleep(50)
randomClick(410,192,3)
}


numpad1::clickCurse()
numpad2::clickBind()
numpad9::exitapp