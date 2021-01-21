#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 2
areaClick(){
Random, x, 465, 530
Random, y, 255, 320
click, %x%,%y%
}

isInventoryFull(){
	ImageSearch, output_x, output_y, 732, 445, 770, 479, *TransBlack *%trans_var% %A_WorkingDir%\log.png
	If(ErrorLevel == 0){
		MsgBox,inventory is full
		return true
	}
	If(ErrorLevel == 1){
		MsgBox, inventory is not full
		return false
	}
	

}

clickBank(){
Random, x, 147, 210
Random, y, 268, 315
click, %x%,%y%
}
clickDeposit(){
Random, x, 410, 415
Random, y, 375, 380
click, %x%,%y%
}
clickDepositAll(){
Random, x, 389, 400
Random, y, 434, 454
click, %x%,%y%
}
clickTree(){
Random, x, 745, 752
Random, y, 212, 220
click, %x%,%y%
sleep 603000
Random, u, 413, 420
Random, v, 325, 330
click, %u%,%v%
}
goBank(){
clickBank()
sleep 10000
clickDeposit()
sleep 10000
clickDepositAll()
sleep 1000
clickTree()
}
randomClick(x,y){
x_min=%x%
x_max:=x_min+5
y_min=%y%
y_max:=y_min+5
Random,clickx , %x_min%, %x_max%
Random, clicky, %y_min%, %y_max%
Random sleepTime,100,300
click, %clickx%,%clicky%
sleep %sleepTime%
}
dropInventory(){

randomClick(627,288)

randomClick(627,318)

randomClick(627,355)

randomClick(627,378)

randomClick(627,408)

randomClick(627,4459)

randomClick(627,470)


randomClick(668,258)

randomClick(668,288)

randomClick(668,318)

randomClick(668,348)

randomClick(668,378)

randomClick(668,408)

randomClick(668,445)

randomClick(668,470)


randomClick(703,258)

randomClick(703,288)

randomClick(703,318)

randomClick(703,348)

randomClick(703,378)

randomClick(703,408)

randomClick(703,445)


randomClick(740,258)

randomClick(740,288)

randomClick(740,318)

randomClick(740,348)

randomClick(740,378)

randomClick(740,408)

randomClick(740,445)


}

prayflick(){


loop
{
    If(pray==false){
        break
		}
    click, 659, 142
	sleep 300
}
return
}

prayOff(){
	pray=false
}


numpad1::dropInventory()
numpad2::prayflick()
numpad3::prayOff()
numpad4::clickDeposit()
numpad5::clickDepositAll()
numpad6::clickTree()
numpad7::goBank()
numpad9::exitapp
