/* When numbers are positioned across the screen, then this sets to true and the numbers
to multiply are marked in another color */
numbers_in_position = true
correct_answer = table_multiples[| 0] * table_multiples[| 1];
show_debug_message("Correct answer is :"+string(correct_answer));
alarm[1] = 1;