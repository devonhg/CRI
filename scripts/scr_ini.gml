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
    
//Set Game Settings
    window_set_caption( global.title + " " + global.version );
    
//Once Finished, move on.
    room_goto_next(); 
