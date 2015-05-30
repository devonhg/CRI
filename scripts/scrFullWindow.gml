///scrFullWindow(Height, Scale)

/*
__setHeight = Set the height for your game, the width is determined automatically based on
monitor. 

__setScale = How large you wish to scale the game. Set to 0 for auto scaling to fill 

monitor. 
setFull = Set Fullscreen( true/false )
Set SetScale to 0 for automatic scaling as high as possible while keeping it and even number
scrFullWindow(screen scale, set Height, __setScale)
*/

//Declare Variables
var __setHeight, __setScale, __ratVal, __H, __W , __dispW, __dispH, __scaleTo;

__setHeight = argument[0];
__setScale = argument[1];

//Obtain ratio value of the monitor
    __dispW= display_get_width();
    __dispH= display_get_height();
    __ratVal = __dispW/__dispH;

    view_visible[0] = true;
    view_enabled = true;

//Floor height and width settings to round values
    __H = floor(__setHeight);
    __W = floor(__setHeight*__ratVal);
    
    view_hview[0] = __H;
    view_wview[0] = __W;

//Decide how to scale the window and actually scale it, based on the setting.
if __setScale = 0{
        scaleTo = floor(__dispH/__H);
        hPort = (__H*scaleTo);
        wPort = (__W*scaleTo);
        view_hport[0] = hPort;
        view_wport[0] = wPort;
        window_set_size(wPort,hPort); 
        window_set_position((__dispW-wPort)/2,(__dispH-hPort)/2);                      
}else{
        hPort = (__H*__setScale);
        wPort = (__W*__setScale);   
        view_hport[0] = __dispW;
        view_wport[0] = __dispH;
        window_set_size(wPort,hPort);
        window_set_position((__dispW-wPort)/2,(__dispH-hPort)/2);                 
} 
    
surface_resize(application_surface, wPort,hPort);
    
return __W;
