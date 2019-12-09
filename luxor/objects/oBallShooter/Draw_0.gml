draw_self();
var r = collision_line_point(x, y, x, 0, oBall, true, true);
draw_line(x, y, r[1], r[2]);
draw_line_width_colour(x, y, r[1], r[2], 2, colorOne, colorTwo);