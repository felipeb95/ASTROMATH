/// pick_items_by_level(level)

var level = argument0;
var ipl = global.ipl[level-1];

if(level != 1)
    global.lower_bound = global.upper_bound + 1; //ipl anterior * nivel anterior
    
global.upper_bound = (global.lower_bound + ipl) - 1;

ds_list_clear(global.list);
ds_list_clear(global.list_buenas);
ds_list_clear(global.list_malas);

for(index = global.lower_bound; index <= global.upper_bound; index++){
    ds_list_add(global.list,global.backup_list[| index]);
}

//ds_list_copy(global.random_list,global.list);

show_debug_message(" ");
show_list(global.list);


