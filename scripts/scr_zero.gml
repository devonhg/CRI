///scr_zero( number1m, number2, ...)
/*
    This script returns the number that is closest to zero, disregarding
    the complications brought on by negative numbers. 
*/

//Sort all listed rooms into array, as well as allows for option arguments. 

var i, smallest, values;

for(i=0;i<argument_count;i++){
    values[i] = argument[i];  
}

smallest = 0;
for (i = 0; i < (array_length_1d( values )) ; i += 1){
   if (abs(values[i]) < abs(values[smallest])){
      smallest = i;
   }
}

return values[smallest]
