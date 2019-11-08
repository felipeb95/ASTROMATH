image_index = playersHp;
draw_self();

draw_set_halign(fa_left);
draw_set_font(fPlayerScore);
draw_text(scoreX, scoreY, string(playersScore)+" puntos");