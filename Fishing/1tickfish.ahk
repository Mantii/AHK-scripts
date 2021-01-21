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

dropInv(){
y1:=250
y2:=282
y3:=312
y4:=345
y5:=377
y6:=405
y7:=438

x1:=597
x2:=634
x3:=668
x4:=707

droprate:=40

randomClick(x1,y1,2)
randSleep(droprate)
randomClick(x1,y2,2)
randSleep(droprate)
randomClick(x1,y3,2)
randSleep(droprate)
randomClick(x1,y4,2)
randSleep(droprate)
randomClick(x1,y5,2)
randSleep(droprate)
randomClick(x1,y6,2)
randSleep(droprate)
randomClick(x1,y7,2)
randSleep(droprate)

randomClick(x2,y1,2)
randSleep(droprate)
randomClick(x2,y2,2)
randSleep(droprate)
randomClick(x2,y3,2)
randSleep(droprate)
randomClick(x2,y4,2)
randSleep(droprate)
randomClick(x2,y5,2)
randSleep(droprate)
randomClick(x2,y6,2)
randSleep(droprate)
randomClick(x2,y7,2)
randSleep(droprate)

randomClick(x3,y1,2)
randSleep(droprate)
randomClick(x3,y2,2)
randSleep(droprate)
randomClick(x3,y3,2)
randSleep(droprate)
randomClick(x3,y4,2)
randSleep(droprate)
randomClick(x3,y5,2)
randSleep(droprate)
randomClick(x3,y6,2)
randSleep(droprate)
randomClick(x3,y7,2)
randSleep(droprate)

randomClick(x4,y1,2)
randSleep(droprate)
randomClick(x4,y2,2)
randSleep(droprate)
randomClick(x4,y3,2)
randSleep(droprate)
randomClick(x4,y4,2)
randSleep(droprate)
randomClick(x4,y5,2)
randSleep(droprate)
randomClick(x4,y6,2)
randSleep(droprate)
randomClick(x4,y7,2)
randSleep(droprate)
}

clickFish(){
randomClick(363,300,2)
}
clickRange(){
randomClick(282,327,5)

}
pickCook(){
loop{
randSleep(450)
randomClick(363,300,2)
randSleep(350)
randomClick(282,327,5)
}
}

numpad1::pickCook()
numpad2::clickRange()
numpad3::dropInv()
numpad9::reload
#numpad9::exitapp