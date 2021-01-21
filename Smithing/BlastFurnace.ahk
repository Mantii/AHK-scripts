#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


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

clickSlot(functionNumber){
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

	If (functionNumber = 1)
	{
	randomClick(x1,y1,2)
	}
		Else If (functionNumber = 2)
		{
		randomClick(x1,y2,2)
		}
		Else If (functionNumber = 3)
		{
		randomClick(x1,y3,2)
		}
		Else If (functionNumber = 4)
		{
		randomClick(x1,y4,2)
		}
		Else If (functionNumber = 5)
		{
		randomClick(x1,y5,2)
		}
		Else If (functionNumber = 6)
		{
		randomClick(x1,y6,2)
		}
		Else If (functionNumber = 7)
		{
		randomClick(x1,y7,2)
		}
		Else If (functionNumber = 8)
		{
		randomClick(x2,y1,2)
		}
		Else If (functionNumber = 9)
		{
		randomClick(x2,y2,2)
		}
		Else If (functionNumber = 10)
		{
		randomClick(x2,y3,2)
		}
		Else If (functionNumber = 11)
		{
		randomClick(x2,y4,2)
		}
		Else If (functionNumber = 12)
		{
		randomClick(x2,y5,2)
		}
		Else If (functionNumber = 13)
		{
		randomClick(x2,y6,2)
		}
		Else If (functionNumber = 14)
		{
		randomClick(x2,y7,2)
		}
		Else If (functionNumber = 15)
		{
		randomClick(x3,y1,2)
		}
		Else If (functionNumber = 16)
		{
		randomClick(x3,y2,2)
		}
		Else If (functionNumber = 17)
		{
		randomClick(x3,y3,2)
		}
		Else If (functionNumber = 18)
		{
		randomClick(x3,y4,2)
		}
		Else If (functionNumber = 19)
		{
		randomClick(x3,y5,2)
		}
		Else If (functionNumber = 20)
		{
		randomClick(x3,y6,2)
		}
		Else If (functionNumber = 21)
		{
		randomClick(x3,y7,2)
		}
		Else If (functionNumber = 22)
		{
		randomClick(x4,y1,2)
		}
		Else If (functionNumber = 23)
		{
		randomClick(x4,y2,2)
		}
		Else If (functionNumber = 24)
		{
		randomClick(x4,y3,2)
		}
		Else If (functionNumber = 25)
		{
		randomClick(x4,y4,2)
		}
		Else If (functionNumber = 26)
		{
		randomClick(x4,y5,2)
		}
		Else If (functionNumber = 27)
		{
		randomClick(x4,y6,2)
		}
		Else If (functionNumber = 28)
		{
		randomClick(x4,y7,2)
		}
}

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

closeBank(){
randomClick(520, 200 ,1)
}
takeCoal(){
randomClick(483, 448,3)
randSleep(100)
randomClick(217, 267,2)
randSleep(100)
closeBank()
randSleep(100)
clickSlot(1)
randSleep(200)
randomClick(401, 265,2)
randSleep(500)
randomClick(260, 263,2)
randSleep(300)
closeBank()
randSleep(100)
}
goFurnace(){
randomClick(218, 338,2)
}
addCoal(){
randSleep(100)
send {shift down}
randSleep(100)
clickSlot(1)
randSleep(200)
send {shift up}
randSleep(200)
randomClick(387, 269,2)
}
collectBars(){
randSleep(200)
randomClick(446, 297,2)
randSleep(3500)
randomClick(218, 126 ,3)
}
goBank(){
randomClick(479, 174,2)
}
drinkStam(){
randomClick(483, 448,3)
randSleep(100)
randomClick(384, 265,2)
randSleep(200)
closeBank()
randSleep(300)
clickSlot(2)
randSleep(200)
randomClick(401, 265,2)
}
script1(){
	goFurnace()
	randSleep(6000)
	addCoal()
	randSleep(500)
	collectBars()
	randSleep(500)
	goBank()
	randSleep(4000)
	takeCoal()
	randSleep(200)
}
script2(){
	goFurnace()
	randSleep(6000)
	addCoal()
	randSleep(500)
	collectBars()
	randSleep(500)
	goBank()
	randSleep(4000)
	drinkStam()
	randSleep(600)
	takeCoal()
	randSleep(200)
}
wholeScript(){
loop{

	script1()
	script1()
	script1()
	script1()
	randSleep(1000)
	script2()
	}
}
goFurnace1(){
randomClick(218, 338,2)
randSleep(9000)
send {shift down}
clickSlot(1)
randSleep(200)
send {shift up}
randSleep(200)
randomClick(387, 269,2)
randSleep(200)
randomClick(446, 297,2)
randSleep(4000)
randomClick(218, 126 ,3)
randSleep(4000)
randomClick(479, 174,2)
randSleep(200)
}

numpad1::takeCoal()
numpad2::goFurnace()
numpad3::addCoal()
numpad4::collectBars()
numpad5::goBank()
numpad6::drinkStam()
numpad7::wholeScript()
numpad8::reload
numpad9::exitapp