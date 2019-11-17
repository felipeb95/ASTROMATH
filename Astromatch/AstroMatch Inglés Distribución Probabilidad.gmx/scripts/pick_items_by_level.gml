/// pick_items_by_level(level)

var level = argument0;
var ipl = global.ipl[level-1];
var lower_bound = undefined;

if(level == 1)
    lower_bound = 0;
else
    lower_bound = (global.ipl[level-2])*(level-1); //ipl anterior * nivel anterior
    
upper_bound = (lower_bound + ipl) - 1;

ds_list_clear(global.list);
ds_list_clear(global.list_buenas);
ds_list_clear(global.list_malas);

for(index = lower_bound; index <= upper_bound; index++){
    ds_list_add(global.list,global.backup_list[| index]);
}

show_debug_message(" ");
show_list(global.list);


