///clock(time)
/*
This script takes a value and converts it into clock format, returns string. 
clock(timer variable, gamespeed)
*/
var clk_tmer, clk_gmSpd, clk_tme, clk_str, clk_sec, clk_min;
clk_tmer = argument0; 
clk_gmSpd = room_speed;
clk_tme = clk_tmer/clk_gmSpd
//clk_sec = clk_tme
clk_min = clk_tme div 60
clk_sec = floor(clk_tme mod 60)
if clk_sec < 10 clk_sec = "0"+string(clk_sec)
if clk_min < 10 clk_min = "0"+string(clk_min)
clk_str = string(clk_min)+":"+string(clk_sec)
return clk_str; 