///scr_obj_to_rooms(object, room1, room2, ...)
/*
    You can use this script to add one controller to different rooms.
*/

var object, rooms, i , j;

object = argument[0];
rooms[0] = argument[1];

//Sort all listed rooms into array, as well as allows for option arguments. 
if argument_count > 2{
    for(i=1;i<argument_count;i++){
        rooms[i-1] = argument[i];  
    }
} 

//Check if room is equal to any of the rooms, and if so create controller object. 
for(j=0;j<array_length_1d(rooms);j++){
    if room = rooms[j] and !instance_exists(object){
        instance_create(x,y,object)
    }
}