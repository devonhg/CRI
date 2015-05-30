///scr_track(label, variable);
/*
    Use this script to track a variable in the master control debugger. 
*/

var label, variable, masterObject;

label = argument[0]; 
variable = argument[1]; 
masterObject = cGame; 

if instance_exists(masterObject){
    for (i = 0; i < array_height_2d(masterObject.debug_vars) ; i++ ){
        //Checks if label already exists, if so updates variable
        if masterObject.debug_vars[i,0] = string( label ){
            masterObject.debug_vars[i, 1] = variable;
            exit; 
        }
        //Otherwise, it does not exists and adds a new entry. 
        if masterObject.debug_vars[i,0] = ""{
            masterObject.debug_vars[i, 0] = label;
            masterObject.debug_vars[i, 1] = variable;  
            exit;        
        }
    }
} 
