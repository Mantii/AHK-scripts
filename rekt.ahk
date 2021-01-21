#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
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
		Else If (functionNumber = 18)
		{
		randomClick(x4,y7,2)
		}
}

invClicker(){
slp=20
clickSlot(11)
randSleep(slp)
clickSlot(18)
randSleep(slp)

clickSlot(4)
randSleep(slp)
clickSlot(25)
randSleep(slp)

	clickSlot(1)
	randSleep(slp)
	clickSlot(7)
	randSleep(slp)

	clickSlot(8)
	randSleep(slp)
	clickSlot(14)
	randSleep(slp)

	clickSlot(15)
	randSleep(slp)
	clickSlot(21)
	randSleep(slp)

	clickSlot(22)
	randSleep(slp)
	clickSlot(28)
	randSleep(slp)
	
		clickSlot(2)
		randSleep(slp)
		clickSlot(6)
		randSleep(slp)

		clickSlot(9)
		randSleep(slp)
		clickSlot(13)
		randSleep(slp)

		clickSlot(16)
		randSleep(slp)
		clickSlot(20)
		randSleep(slp)

		clickSlot(23)
		randSleep(slp)
		clickSlot(27)
		randSleep(slp)
			clickSlot(3)
			randSleep(slp)
			clickSlot(5)
			randSleep(slp)

			clickSlot(10)
			randSleep(slp)
			clickSlot(12)
			randSleep(slp)

			clickSlot(17)
			randSleep(slp)
			clickSlot(19)
			randSleep(slp)

			clickSlot(24)
			randSleep(slp)
			clickSlot(26)
			randSleep(slp)

}
numpad1::invClicker()
numpad2::clickSlot(5)
numpad8::exitApp