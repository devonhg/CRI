///showMessage()
/*
    This acts as a replacement for the built in "show_message" function, this one 
    returns the object name and event it's called from. 
*/

var ev, evo,uin;
ev = event_type;
uin = argument0;
switch(ev){
    case 0: evo = "Create" break; 
    case 1: evo = "Destroy" break;
    case 2: evo = "Alarm" break;
    case 3: evo = "Step" break;
    case 4: evo = "Keyboard" break;
    case 5: evo = "Mouse" break;
    case 6: evo = "Collision" break;
    case 7: evo = "Other" break;
    case 8: evo = "Draw" break;
    case 9: evo = "Key Release" break;
     
}
show_message(
    string(
    "I:"+object_get_name(object_index)+" .:. "
    +"E:"+string(evo)+"#"
    +"-----------------------"+"#"
    +string(uin)
    )
);