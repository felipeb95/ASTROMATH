draw_set_font(fTableHeader);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/* Lines to make the table */
draw_line_width(xCenterOfTable - horizontalLineLarge, yForHorizontalLine, xCenterOfTable + horizontalLineLarge + horizontalLineLarge/2, yForHorizontalLine, tableLineWidth);
draw_line_width(xCenterOfTable + horizontalLineLarge, yForHorizontalLine - yAboveHorizontalLine, xCenterOfTable + horizontalLineLarge, yForHorizontalLine + yAboveHorizontalLine*8, tableLineWidth);

/* Actual exersise */
if(oLogicSpawner.primeType){
	draw_text(xCenterOfTable + xCenterOffset, yForExersise, "Elige un número primo\nque pueda dividir al menos uno\n de los números coloreados\nde la tabla");	
}

if(oLogicSpawner.divisionType){
	if(!is_undefined(oLogicSpawner.subDivisionNumber)){
		draw_set_font(fTableMessage);
		draw_text(xCenterOfTable + xCenterOffset, yForExersise, "Divide "+string(oLogicSpawner.subDivisionNumber)+"/"+string(oLogicSpawner.numberHit));
		draw_set_font(fTableHeader); // Reset
	}
}

if(multiplyMessage and ds_list_size(tableDivisors)>=2){
	draw_set_font(fTableMessage);
	draw_text(xCenterOfTable + xCenterOffset, yForExersise,"Multiplica "+string(tableDivisors[| 0])+" y "+string(tableDivisors[| 1]));
	draw_set_font(fTableHeader); // Reset
}

if(mcmMessage){
	finalMessage = "El MCM entre "+string(oLogicSpawner.numberOneHeader)+" y "+string(oLogicSpawner.numberTwoHeader)+" es";
	draw_text(xCenterOfTable + xCenterOffset, yForList - string_height(finalMessage), finalMessage);
}
if(oLogicSpawner.multiplyingType){
	for(i = 0; i < ds_list_size(tableDivisors); i++){
		draw_set_font(fMultiples);
		draw_set_halign(fa_left);
		firstNumberX = xCenterOfTable + xCenterOffset - listX/2;
	
		draw_set_color(markedColor);
		draw_text(firstNumberX, yForList, strMarked); // Highlighted text
		draw_set_color(notMarkedColor);
		draw_text(firstNumberX+string_width(strMarked), yForList, strNotMarked);
	}

	draw_set_color(c_white); // To keep other elements with white color.
	draw_set_halign(fa_center); // Reset alignment for other drawings.
	draw_set_font(fTableHeader) // Font Reset for other elements in screen.

}

/* Exersise's numbers placement */
if(highlightedRow == -1)
	draw_set_colour(markedColor);
draw_text(xForNumberOne, yForHorizontalLine - headersOffset, string(oLogicSpawner.numberOneHeader)); // original numberOne
draw_text(xForNumberTwo, yForHorizontalLine - headersOffset, string(oLogicSpawner.numberTwoHeader)); // original numberTwo
draw_set_colour(c_white); // Reset
/* Divisors */
if(!ds_list_empty(tableDivisors)){ // If divisors list isn't empty, then it starts drawing.
	/* Divisors at rightest column */
	for(i = 0; i < ds_list_size(tableDivisors); i++){
		if(i == highlightedRow + 1  and (oLogicSpawner.divisionType or oLogicSpawner.primeType))
			draw_set_colour(markedColor);
		draw_text(xCenterOfTable + horizontalLineLarge + horizontalLineLarge/4, yForHorizontalLine - headersOffset + ySpaceBetweenElements*i, string(tableDivisors[| i]));
		draw_set_colour(c_white); // Reset
	}
}

/* Partials */
if(!ds_list_empty(numberOnePartials)){
	
	if(oLogicSpawner.primeType)
		highlightedRow = ds_list_size(numberOnePartials) - 1;	
	if(oLogicSpawner.divisionType)
		highlightedRow = ds_list_size(tableDivisors) - 2;
		
	for(i = 0; i < ds_list_size(numberOnePartials); i++){
		if(i == highlightedRow and (oLogicSpawner.divisionType or oLogicSpawner.primeType))
			draw_set_colour(markedColor);
		draw_text(xForNumberOne, yForHorizontalLine - headersOffset + ySpaceBetweenElements*(i+1), string(numberOnePartials[| i])); 
		draw_set_colour(c_white); // Reset
	}
}

if(!ds_list_empty(numberTwoPartials)){
	
	if(oLogicSpawner.primeType)
		highlightedRow = ds_list_size(numberOnePartials) - 1;	
	if(oLogicSpawner.divisionType)
		highlightedRow = ds_list_size(tableDivisors) - 2;
		
	for(i = 0; i < ds_list_size(numberTwoPartials); i++){
		if(i == highlightedRow  and (oLogicSpawner.divisionType or oLogicSpawner.primeType))
			draw_set_colour(markedColor);
		draw_text(xForNumberTwo, yForHorizontalLine - headersOffset + ySpaceBetweenElements*(i+1), string(numberTwoPartials[| i])); 
		draw_set_colour(c_white); // Reset
	}
}


