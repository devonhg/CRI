/*
    This is the initation script for the game.
*/

//Create the master control object. 
    instance_create(50,50, cGame);
    
//Game Constants
    global.version = "v0.3.4";
    global.title = "CRI";
    global.framerate = 60;
    global.window_height = 250;
    global.mg_width = window_get_width() / 36;
    global.mg_height = window_get_height() / 30;
    
//Set Game Settings
    window_set_caption( global.title + " " + global.version );
    texture_set_interpolation(false);
    
//Once Finished, move on.
    room_goto_next(); 
