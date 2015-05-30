///scr_button(x,y,Name,Sprite,*Down Sprite,*Show Name,*Font,*Font Color)
/*
Regular button, when clicked it's on for one step and then off again. 
*/

var XX,YY,buttonName,state,sprite,hover,buttonDown;

XX = argument0;
YY = argument1;
buttonName = argument2;
//state = argument3;
sprite = argument3;

button = instance_create(XX,YY,oButton);

if (argument_count > 5) { button.buttonDown = argument[4]; } 
if (argument_count > 6) { button.showName = argument[5]; } 
if (argument_count > 7) { button.font = argument[6]; } 
if (argument_count > 8) { button.fontColor = argument[7]; } 

button.buttonType = 1;
button.x = XX;
button.y = YY;
button.buttonName = buttonName;
//button.state = state;
button.sprite = sprite;

return button; 
