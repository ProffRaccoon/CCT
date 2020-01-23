/// scr_record(timeline, step, arrow_to_record)
arrow_to_record = argument[2];      // 0 = start arrow
                                    // 1 = random arrow
                                    // 2 = left arrow
                                    // 3 = up arrow
                                    // 4 = right arrow
step = argument[1];
timeline = argument[0];
if (!ds_exists(recordDS,ds_type_grid)) {
                recordDS = ds_grid_create(2,2); // step x script.string
                                                // entry    entry
                                                //
}
    switch (arrow_to_record) {
    
        case 0:
            ds_grid_set(recordDS,0,0,0);
            ds_grid_set(recordDS,1,0,script_get_name(arrow_create_start));
            ;break;
            
        case 1:
            ds_grid_resize(recordDS,ds_grid_width(recordDS),ds_grid_height(recordDS)+1);
            ds_grid_set(recordDS,0,ds_grid_height(recordDS)-1,step);
            ds_grid_set(recordDS,1,ds_grid_height(recordDS)-1,script_get_name(arrow_create));
            ;break;
        //##########################################
        case 2:
            ds_grid_resize(recordDS,ds_grid_width(recordDS),ds_grid_height(recordDS)+1);
            ds_grid_set(recordDS,0,ds_grid_height(recordDS)-1,step);
            ds_grid_set(recordDS,1,ds_grid_height(recordDS)-1,script_get_name(scr_create_arrow_left));
            ;break;
        case 3:
            ds_grid_resize(recordDS,ds_grid_width(recordDS),ds_grid_height(recordDS)+1);
            ds_grid_set(recordDS,0,ds_grid_height(recordDS)-1,step);
            ds_grid_set(recordDS,1,ds_grid_height(recordDS)-1,script_get_name(scr_create_arrow_up));
            ;break;
        case 4:
            ds_grid_resize(recordDS,ds_grid_width(recordDS),ds_grid_height(recordDS)+1);
            ds_grid_set(recordDS,0,ds_grid_height(recordDS)-1,step);
            ds_grid_set(recordDS,1,ds_grid_height(recordDS)-1,script_get_name(scr_create_arrow_right));
            ;break;
    }
