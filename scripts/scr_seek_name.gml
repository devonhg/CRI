///scr_seek_name(name, object);
/*
    This script searches all instances of specified object for the
    "name" variable and checks if it equals the name it's searching for.
    If it find it, it returns the instance id, otherewise returns -4; 
*/

var na, object, cur_obj;

na = argument[0];
object = argument[1];

for(i=0; i < instance_number(object); i++){
    cur_obj = instance_find(object, i); 
    
    if cur_obj.name = na{
        return cur_obj; 
    }
}

return -4; 