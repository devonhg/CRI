///scr_room_to_objects(room, controller1, controller2, ...)
/*
    You can use this script to add multiple controllers to a single room.
*/

var __object, __room, i , j;

__room = argument[0];
__objects[0] = argument[1];

//Sort all listed rooms into array, as well as allows for option arguments. 
if argument_count > 2{
    for(i=1;i<argument_count;i++){
        __objects[i-1] = argument[i];  
    }
} 

//Check if room is equal to any of the rooms, and if so create controller object. 
if room = __room{
    for(j=0;j<array_length_1d(__objects);j++){
        if !instance_exists(__objects[j]){
            instance_create(x,y, __objects[j]);
        }        
    }
}