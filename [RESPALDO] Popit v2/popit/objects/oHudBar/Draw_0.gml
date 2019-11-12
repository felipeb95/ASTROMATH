draw_sprite(sHealthPoints, oPlayerProperties.playersHp, hpXOffset , room_height - sprite_height/2);
draw_set_halign(fa_right);
draw_set_font(fPlayerScore);
draw_text(room_width - scoreXOffset, room_height - sprite_height/2, string(oPlayerProperties.playersScore)+" puntos");
