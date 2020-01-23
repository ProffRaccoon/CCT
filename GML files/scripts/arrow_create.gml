//
if (argument_count == 0){
    randomize();
    i = irandom_range(1,3);
        switch(i){
    case 1: 
        newA = instance_create(obj_player.x,0,o_arrow_left);
        ;break;
    case 2: 
        newA = instance_create(obj_player.x,0,o_arrow_up);
        ;break;
    case 3: 
        newA = instance_create(obj_player.x,0,o_arrow_right);
        ;break;
    default:
        newA = instance_create(obj_player.x,0,obj_falling_arrow);
        ;break;    
    }
    newA.spd = fall_spd;
} else {
    i = argument[0];
    switch(i){
    case 0: 
        newA = instance_create(obj_player.x,0,o_arrow_left);
        ;break;
    case 1: 
        newA = instance_create(obj_player.x,0,o_arrow_up);
        ;break;
    case 2: 
        newA = instance_create(obj_player.x,0,o_arrow_right);
        ;break;
    default:
        newA = instance_create(obj_player.x,0,obj_falling_arrow);
        ;break;    
    }
    newA.spd = fall_spd;
}
