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
n_var:=n_min * 0.1
n_max:=n_min+n_var
Random, slptime,%n_min%,%n_max%
sleep, %slptime%
}


antiSleep(n){
Random,b,1,100
percentile:=90
if( b < percentile ){
	checkCraftXp(%n%)
} 
else{
	randSleep(%n%)
}
}

checkCraftXp(tim){
	randomClick(744,296,3)
	randSleep(1000)
	randomClick(638,348,3)
	randSleep(%tim%)
	randomClick(744,296,3)

}


goBank(){
randomClick(878, 549 ,20)
}

depositAll(){
randomClick(823, 741,12)
}

takeSapp(){
randomClick(803, 685,10)
}
closeBank(){
randomClick(894, 305  ,7)
}
craft(){
randomClick(1030, 449 ,10)
randSleep(400)
randomClick(1034, 397 ,10)
randSleep(600)
randomClick(400, 186 ,20)
randSleep(600)
}
exitScript(){
MsgBox, Exiting Script
exitapp
}
reloadScript(){
MsgBox,Reloading Script
reload
}
script(){
loop{
depositAll()
randSleep(350)
takeSapp()
randSleep(600)
closeBank()
randSleep(350)
craft()
randSleep(32000)
;32000
goBank()
randSleep(600)
}
}





#numpad5::script()

#numpad2::reloadScript()
#numpad8::exitScript()