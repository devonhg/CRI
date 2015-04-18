/*
The purpose of this script is to add conditions to the infobox. 
This can be added to the step event for dynamic data in the string.  

Basically all this does in the fill the array that the infobox uses. 

Usage: infoBoxAdd(btnName, Text)
*/

var btnName, Text;
btnName = argument0;
Text = argument1; 

for(i=0;i<50;i+=1)
    {
        if infoBoxArr[i,1] = btnName
            {
                infoBoxArr[i,0] = "1"
                infoBoxArr[i,1] = btnName
                infoBoxArr[i,2] = Text
                exit;           
            }
        if infoBoxArr[i,0] = "0" 
            {
                infoBoxArr[i,0] = "1"
                infoBoxArr[i,1] = btnName
                infoBoxArr[i,2] = Text
                exit;
            }
    }