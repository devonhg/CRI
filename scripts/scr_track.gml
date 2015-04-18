///scr_track(label, variable);
/*
    Use this script to track a variable in the master control debugger. 
*/

var label, variable;

label = argument[0]; 
variable = argument[1]; 

if instance_exists(cMaster){
    for (i = 0; i < array_height_2d(cMaster.debug_vars) ; i++ ){
        //Checks if label already exists, if so updates variable
        if cMaster.debug_vars[i,0] = string( label ){
            cMaster.debug_vars[i, 1] = variable;
            exit; 
        }
        //Otherwise, it does not exists and adds a new entry. 
        if cMaster.debug_vars[i,0] = ""{
            cMaster.debug_vars[i, 0] = label;
            cMaster.debug_vars[i, 1] = variable;  
            exit;        
        }
    }
} 