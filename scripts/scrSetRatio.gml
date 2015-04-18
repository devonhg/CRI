/*
This script is like fullwindow, but does not auto the ratio, you 
set that yourself. 
scrSetRatio(screen Scale,set Height,Set Scale, Ratio to Set to)
*/
showMessage("HaHa!")
screenScale = argument0
setHeight = argument1
//view = argument2
setScale = argument2
//setFull = argument4
ratioValue = argument3
view = 0
windowW = 0
windowH = 0
dspWidth = display_get_width()
dspHeight = display_get_height()
//ratioValue = display_get_width()/display_get_height()
view_visible[view] = true;
view_enabled = true;
H = floor(setHeight*screenScale)
W = floor((setHeight*ratioValue)*screenScale)
oddW = W mod 2
if oddW = 0 W+=1
oddH = H mod 2
if oddH = 0 H+=1
view_hview[view] = H
view_wview[view] = W
if setScale = 0
    {
        scaleTo = floor(dspHeight/H)
        hPort = (H*scaleTo)
        wPort = (W*scaleTo)
        oddW = dspWidth mod 2
        if oddW = 0 dspWidth+=1
        oddH = dspHeight mod 2
        if oddH = 0 dspHeight+=1   
        //show_message("W: "+string(windowW)+"#"+"H: "+string(windowH)) 
        view_wport[view] = dspWidth
        view_hport[view] = dspHeight
        /*if window_get_fullscreen() = false*/ window_set_size(wPort,hPort);
        //display_set_gui_size(801,603)
    }
else
    {
        hPort = (H*setScale);
        wPort = (W*setScale);
        oddW = hPort mod 2;
        if oddW = 0 hPort+=1;
        oddH = wPort mod 2;
        if oddH = 0 wPort+=1;    
        view_hport[view] = dspWidth;
        view_wport[view] = dspHeight;
        if window_get_fullscreen() = false window_set_size(wPort,hPort);
    } 
//window_set_fullscreen(setFull)
wSet = W/2//abs(W - display_get_width())/2
hSet = H/2//abs(H - display_get_height())/2
//window_set_position(wSet,hSet)
return W