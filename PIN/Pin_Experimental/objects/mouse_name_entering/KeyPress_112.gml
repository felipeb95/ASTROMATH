/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B69D6A4
/// @DnDArgument : "code" "/// Enter your name message$(13_10)// Name can only be entered up to 15 letters$(13_10)while(1) {$(13_10)global.name = get_string("Enter your name (max 10 characters):","Player 1");$(13_10)if string_length(global.name) <= 15$(13_10)break;$(13_10)else$(13_10)show_message("The name you've entered is too long (above 15 characters). Please enter a shorter name.");$(13_10)}"
/// Enter your name message
// Name can only be entered up to 15 letters
while(1) {
global.name = get_string("Enter your name (max 10 characters):","Player 1");
if string_length(global.name) <= 15
break;
else
show_message("The name you've entered is too long (above 15 characters). Please enter a shorter name.");
}