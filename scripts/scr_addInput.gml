///scr_addInput(keyboard, controller, *sign)
/*
    The purpose of this script is to provide an alternative to the built in control
    system that accomodates both controller input and keyboard input. It returns a 
    range from 0-1 based on the type of control. Note this is for gamepad_* only.
    
    This works for xbox360 controllers and ps3 controllers.
    
    The "sign" argument determines what to return the controller sign as. 0 for
    negative, 1 for positive (true/false). Using this you can isolate a joystick 
    direction to be only one direction verses two. This argument is optional and
    defaults to true to return when a positive value is checking. 
     
*/

var key, cont, si, dz

key = argument[0]; 
cont = argument[1];
si = true

if argument_count > 2{
    si = argument[2]; 
}

dz = .5;//Dead Zone

if (key) or (cont >= dz or cont <= dz*-1){
    if cont >= dz or cont <= dz*-1{
        if si = false{
            if sign(cont) = -1{ return abs(cont); }         
        }if si = true{
            if sign(cont) = 1{ return abs(cont); }
        }       
    }else return true 
}else return false; 