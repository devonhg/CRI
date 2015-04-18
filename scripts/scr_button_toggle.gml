///scr_button_toggle(x,y,Name,Def. State,Standard Sprt,*Dwn Sprt, *Show Name,*font,*Font Color)
/*
Toggle Button, when clicked it toggles from true to false. 
* denotes optional arguments

*/

var XX,YY,buttonName,state,sprite,hover,buttonDown, buttonExists;

XX = argument0;
YY = argument1;
buttonName = argument2;
state = argument3;
sprite = argument4;

button = instance_create(XX,YY,oButton);

if (argument_count > 5) { button.buttonDown = argument[5]; } 
if (argument_count > 6) { button.showName = argument[6]; } 
if (argument_count > 7) { button.font = argument[7]; } 
if (argument_count > 8) { button.fontColor = argument[8]; } 

button.buttonType = 0;
button.x = XX;
button.y = YY;
button.buttonName = buttonName;
button.state = state;
button.sprite = sprite;

return button; 