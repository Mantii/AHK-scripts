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
goRange(){
	randomClick(145, 241,2)
}
goBank(){
randomClick(669, 346,2)
}
cookAll(){
randomClick(226, 128,5)
}
closeBank(){
randomClick(513,192,3)
}
takeFood(){
randomClick(482,450,5)
randSleep(200)
randomClick(220,266,2)
randSleep(200)
}

cooker(){
	loop{
		takeFood()
		randSleep(200)
		closeBank()
		randSleep(100)
		goRange()
		randSleep(15000)
		cookAll()
		randSleep(67000)
		goBank()
		randSleep(15000)
		}
}

numpad1::cooker()
numpad9::exitapp