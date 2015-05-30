///scr_ar_add( 'GroupName' , 'Group Condition');
/*
    The intent of this script is to be ran in the creation code of children
    of the active/reactive parent objects. It's extremely simple in practice,
    quite simply it defines some variables in the object. Group Condition is
    optional, and takes the values "AND" or "OR".
*/

group = argument[0]; 
if argument_count > 1 mode = argument[1]; 