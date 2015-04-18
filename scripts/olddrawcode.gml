var s;//A temp variable to make setting frame convienent; 
var a;//A temp variable for angles
var ap_xx;//Arm Position
var ap_yy;
var ang_di;//Angle Difference; 

arm_back_angle = scr_convert_angle(arm_back_angle);

//Draw Back Arm
if state_look_dir = 1{    
    scr_draw_limb(65, 17, arm_back_angle, spr_cri_arm, 0, -1, 1);    
}else{    
    scr_draw_limb(115, 17, arm_front_angle, spr_cri_arm, 0,1,1);
}
//Draw Body
draw_self();

if state_a_holding s = 0 else s = 1
image_index = s; 

//Head
var dir;
var h_xx = phy_position_x + lengthdir_x(20, image_angle + 90)
var h_yy = phy_position_y + lengthdir_y(20, image_angle + 90)

var ang = point_direction(phy_position_x, phy_position_y-20, mouse_x, mouse_y);
var dif = angle_difference(ang, head_angle);

head_angle = scr_convert_angle(head_angle)

var within_range; 

var look = point_direction(mouse_x, mouse_y, h_xx, h_yy);

//Draw Head
if state_a_holding s = 0 else s = 1
if state_look_dir = 1{
    
/*
    baseAngle = 0; 
    actualAngle = head_angle;

    dir = angle_difference(head_angle, 0);

    if dir < 15 and dir > -15{
        head_angle += median(-5, dif, 5);   
    }*/
    
    /*
    pointdir = ang;
    
    base_angle = head_angle; 
    
    delta = max(-minMaxAngle, min(minMaxAngle, angle_difference(pointdir, base_angle)));
    
    head_angle = scr_angleRotate(image_angle, base_angle + delta, rspeed); 
    */
    //draw_sprite_ext(spr_cri_head, s, h_xx, h_yy, -1, -1, clamp(look,170, 190 ), c_white, 1);
    
    

    cMaster.test3 = head_angle; 
    scr_draw_limb(90, 20, head_angle, spr_cri_head, s,1,1);
    
}else{ 
    if scr_within_angle_range(180, ang, 15){
        head_angle += median(-5, dif, 5);
    } 
    /*if look > 350 or look < 10{ dir_look = look; }
    if look > 10 look = 10; 
    if look < 350 look = 350; */
    //draw_sprite_ext(spr_cri_head, s, h_xx, h_yy, -1, 1, dir_look , c_white, 1);
    
    scr_draw_limb(90, 20, clamp(head_angle, 165, 195), spr_cri_head, s,1,-1);
}

//Draw Front Arm
if state_look_dir = 1{   
    scr_draw_limb(115, 17, arm_back_angle, spr_cri_arm, 0, 1, 1);
}else{
    scr_draw_limb(65, 17, arm_back_angle, spr_cri_arm, 0, -1, 1);
}
