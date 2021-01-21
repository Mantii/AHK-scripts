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

antiSleep(){
Random,b,1,100
percentile:=3
if( b < percentile )
	randSleepLong(60000)
else
	randSleep(100)
}


clickLeather(){
randomClick(600, 249,2)
}
clickNeedle(){
randomClick(596, 281,2)
}
clickChaps(){
randomClick(405, 122,5)
}
clickSpot(){
randomClick(489, 324 ,2)
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

droprate:=50
send {shift down}
randSleep(50)
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
send {shift up}
}
tickFishNCook(){
loop{
clickLeather()
randSleep(100)
clickNeedle()
randSleep(400)
clickChaps()
randSleep(300)
clickSpot()
randSleep(700)
randomClick(597,312,2)
randSleep(600)
randomClick(400, 321 ,2)
randSleep(600)
send {shift down}
randomClick(597, 312 ,2)
randSleep(50)
send {shift up}
randSleep(100)
}
}
tickFish(){
loop{
clickLeather()
randSleep(100)
clickNeedle()
randSleep(400)
clickChaps()
randSleep(300)
clickSpot()
randSleep(600)
send {shift down}
randomClick(597, 312 ,2)
randSleep(50)
send {shift up}
}
}
numpad1::tickFish()

numpad3::clickChaps()
numpad8::reload
numpad9::exitapp