/*
*
*The intention of the master control object is to offer a single object to control other 
*controllers as well as act as a hub for core game related settings. The initial goal of 
*this object was to offer a single place to create control objects without the need of 
*manually inserting them into their rooms but has grown to do more. 
*
*********************
Master Control Object
*********************

Create Event
---------------------
The create event hosts the core game information. Here you will find the games name, 
version, etc as well as core variables that allow the object to function. Each event 
features a blank code execution action for custom code. 

The section titled "Core - Game Settings" can and should be edited.

Step Event
---------------------
The step event in this object handles the custom event handling for pausing as well as 
includes the key checks for developer quick keys. These keys are as follows. 

ctrl + Q = Close Game
ctrl + D = Debug Mode
ctrl + R = Restart Game
ctrl + F = Toggle Fullscreen

Room Start
---------------------
This event has two actions, "Core - Room Management" which handles room specific settings,
and "Core - Controller Inclusions", which should be edited to include the "addController"
scripts. 

Room End
---------------------
This action contains simple cleanup code for the debugger, which is disabled when the 
room changes

Draw GUI
---------------------
This event draws the debug mode information. 


*********************
Usage
*********************

To include a control object you use one of two methods, depending on whether or not the
object is persistent. 

Persistent : Simply add an "instance_create()" to the create event to the master control
object. 

Non-Persistent : Use the "addController" script in the Room Start event in action
"Core - Controller Inclusions". Refer to script for it's specific usage. 



*/