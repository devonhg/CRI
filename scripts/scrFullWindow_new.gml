///scrFullWindow(ScreenScale, Height, Scale)

/*
screenScale = Scale of view in game. Generally just set to 1
setHeight = Set the height for your game, the width is determined automatically based on
monitor. 

setScale = How large you wish to scale the game. Set to 0 for auto scaling to fill 

monitor. 
setFull = Set Fullscreen( true/false )
Set SetScale to 0 for automatic scaling as high as possible while keeping it and even number
scrFullWindow(screen scale, set Height, setScale)
*/

screenScale = argument0;
setHeight = argument1;
setScale = argument2;

dspWidth = display_get_width();
dspHeight = display_get_height();
ratioValue = display_get_width()/display_get_height();

view_visible[0] = true;
view_enabled = true;

H = floor(setHeight*screenScale);
W = floor((setHeight*ratioValue)*screenScale);

view_hview[0] = H;
view_wview[0] = W;

if setScale = 0
    {
        scaleTo = floor(dspHeight/H);
        hPort = (H*scaleTo);
        wPort = (W*scaleTo);
        view_hport[0] = dspWidth;
        view_wport[0] = dspHeight;
        if window_get_fullscreen() = false
            { 
                window_set_size(wPort,hPort); 
                window_set_position((dspWidth-wPort)/2,(dspHeight-hPort)/2);                      
            } 
    }
else
    {
        hPort = (H*setScale);
        wPort = (W*setScale);   
        view_hport[0] = dspWidth;
        view_wport[0] = dspHeight;
        //if window_get_fullscreen() = false
            {
                window_set_size(wPort,hPort);
                window_set_position((dspWidth-wPort)/2,(dspHeight-hPort)/2);
            }       
    } 
surface_resize(application_surface, wPort,hPort);
    
return W;
