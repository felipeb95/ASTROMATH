/* Lines to make the table */
draw_line_width(xCenterOfTable - horizontalLineLarge, yForHorizontalLine, xCenterOfTable + horizontalLineLarge + horizontalLineLarge/2, yForHorizontalLine, tableLineWidth);
draw_line_width(xCenterOfTable + horizontalLineLarge, yForHorizontalLine - yAboveHorizontalLine, xCenterOfTable + horizontalLineLarge, yForHorizontalLine + yAboveHorizontalLine*8, tableLineWidth);

/* Exersise's numbers placement */
draw_set_font(fTableHeader);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(xForNumberOne, yForHorizontalLine - headersOffset, string(oLogicSpawner.numberOneHeader)); // Left Bubble Number
draw_text(xForNumberTwo, yForHorizontalLine - headersOffset, string(oLogicSpawner.numberTwoHeader)); // Right Bubble Number

if(!ds_list_empty(tableDivisors)){ // If divisors list isn't empty, then it starts drawing.
	/* Divisors at rightest column */
	for(i = 0; i < ds_list_size(tableDivisors); i++){
		draw_text(xCenterOfTable + horizontalLineLarge + horizontalLineLarge/4, yForHorizontalLine - headersOffset + ySpaceBetweenElements*i, string(tableDivisors[| i]));
	}
}