///Point_on_line(x1,y1,x2,y2,x,y);
/*
    Checks of x,y is on a line drawn between coordinates 1 and 2. Returns true
    or false. 
*/

var xx,yy, XX, YY, xMin, yMin, xMax, yMax, withinX, withinY; 

//Assign Arguments
    xx[0] = argument[0];
    yy[0] = argument[1];
    xx[1] = argument[2];
    yy[1] = argument[3];
    XX = (argument[4]);
    YY = (argument[5]);

//Get mins and maxes
    xMin = min(xx[0], xx[1]);
    yMin = min(yy[0], yy[1]);
    xMax = max(xx[0], xx[1]);
    yMax = max(yy[0], yy[1]);  

//Within Conditions   
    if xMin != xMax{
        withinX = XX >= xMin and XX <= xMax;
    }else{ withinX = (round(XX) = xMin); }
    if yMin != yMax{
        withinY = YY >= yMin and YY <= yMax;
    }else{ withinY = ( round(YY) = yMin ); }
    
//The final check    
    if( withinX and withinY  ){
        return true; 
    }
    return false;    
