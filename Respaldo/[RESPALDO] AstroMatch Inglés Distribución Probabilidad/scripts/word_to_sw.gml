/// word_to_sw(text)

var text = "sw_"+string_lower(argument0);

text = string_replace(text," ","_");
text = string_replace(text,"-","_");

str = "word to sw format : ["+text+"]";
show_debug_message(" ");
show_debug_message(str);
show_debug_message(" ");

return text;
