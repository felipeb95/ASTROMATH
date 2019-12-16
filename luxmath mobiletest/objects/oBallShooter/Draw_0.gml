draw_self();
var r = collision_line_point(x, y, x, sprite_get_height(sTopBar), oBall, true, true);
draw_line_width_colour(x, y, r[1], r[2], 2, colorOne, colorTwo);