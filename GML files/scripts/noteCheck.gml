///noteCheck(buttonPressed)
buttonPressed = argument[0];
instanceID = noone;
if (instance_exists(obj_falling_arrow)) {
    switch (buttonPressed) {
    case 1: 
        instanceID = instance_nearest(x,y,o_arrow_left);
        
        ;break;
    case 2: 
        instanceID = instance_nearest(x,y,o_arrow_up);
        
        ;break;
    case 3: 
        instanceID = instance_nearest(x,y,o_arrow_right);
        ;break;
    default: 
        instanceID = instance_nearest(x,y,obj_falling_arrow);
    ;break;
    }
    
    if (instanceID != noone) {
        if (instanceID.y < y-32) {
            //fail
        } else if (instanceID.y > (y+45)) {
            //fail
        } else {
            instance_destroy(instanceID,true);
        }
    }
}

/*
if (instance_exists(obj_falling_arrow)) {

    instanceID = instance_nearest(x,y+32,obj_falling_arrow);

    if (instanceID.y < y-32) {
        //fail
    } else if (instanceID.y > (y+32)) {
        //fail
    } else {
        switch(instanceID.target){
        case 1:
        if (left == 1) {instance_destroy(instanceID,true)};
            ;break;
        case 2:
        if (up == 1) {instance_destroy(instanceID,true)};
            ;break;
        case 3:
        if (right == 1) {instance_destroy(instanceID,true)};
            ;break;
        default:
            ;break;
        }
        
    }
    


}
*/

