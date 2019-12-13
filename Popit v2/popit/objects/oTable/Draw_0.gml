draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(fontColor);
draw_set_font(fTableHeader);
/* Lines to make the table */
draw_line_width(xCenterOfTable - horizontalLineLarge, yForHorizontalLine, xCenterOfTable + horizontalLineLarge + horizontalLineLarge/2, yForHorizontalLine, tableLineWidth);
draw_line_width(xCenterOfTable + horizontalLineLarge, yForHorizontalLine - yAboveHorizontalLine, xCenterOfTable + horizontalLineLarge, yForHorizontalLine + yAboveHorizontalLine*8, tableLineWidth);

/* Actual exersise */
if(oLogicSpawner.primeType){
	draw_set_halign(fa_center);
	draw_set_font(fTableMessages);
	draw_set_color(c_black);
	draw_text(xCenterOfTable + xCenterOffset +2, yForExersise+2, "Elige un número primo que\n pueda dividir al menos uno\n de los números coloreados\nde la tabla");
	draw_set_color(c_white);
	draw_text(xCenterOfTable + xCenterOffset, yForExersise, "Elige un número primo que\n pueda dividir al menos uno\n de los números coloreados\nde la tabla");
}

if(oLogicSpawner.divisionType){
	if(!is_undefined(oLogicSpawner.subDivisionNumber)){
		draw_set_halign(fa_center);
		draw_set_font(fTableOpMessages);
		draw_set_color(c_black);
		draw_text(xCenterOfTable + xCenterOffset +2, yForExersise+2, "Divide "+string(oLogicSpawner.subDivisionNumber)+" en "+string(oLogicSpawner.numberHit));
		draw_set_color(c_white);
		draw_text(xCenterOfTable + xCenterOffset, yForExersise, "Divide "+string(oLogicSpawner.subDivisionNumber)+" en "+string(oLogicSpawner.numberHit));
		draw_set_font(fTableHeader); // Reset
	}
}

if(multiplyMessage and ds_list_size(_tableDivisors)>=2){
	draw_set_halign(fa_center);
	draw_set_font(fTableOpMessages);
	draw_set_color(c_black)
	draw_text(xCenterOfTable + xCenterOffset +2, yForExersise +2,"Multiplica "+string(_tableDivisors[| 0])+" por "+string(_tableDivisors[| 1]));
	draw_set_color(c_white)
	draw_text(xCenterOfTable + xCenterOffset, yForExersise,"Multiplica "+string(_tableDivisors[| 0])+" por "+string(_tableDivisors[| 1]));
}



if(mcmMessage){
	draw_set_halign(fa_center);
	draw_set_font(fTableMCM);
	finalMessage = "El MCM entre "+string(oLogicSpawner.numberOneHeader)+" y "+string(oLogicSpawner.numberTwoHeader)+" es";
	draw_set_color(c_black);
	draw_text(xCenterOfTable + xCenterOffset +1, yForList - string_height(finalMessage)+1, finalMessage);
	draw_set_color(c_white);
	draw_text(xCenterOfTable + xCenterOffset, yForList - string_height(finalMessage), finalMessage);
}
/* Multiples */
if(oLogicSpawner.multiplyingType){
	//draw_line_width(room_width/6, room_height, room_width/6 ,0 ,3);
	//draw_line_width(0, room_height/2, room_width, room_height/2,3);
	for(i = 0; i < ds_list_size(_tableDivisors); i++){
		draw_set_halign(fa_left);
		draw_set_font(fMultiples);
		//firstNumberX = xCenterOfTable + xCenterOffset - listX/2;
		listX = string_width(strMarked+strNotMarked); // ####
		//draw_circle(firstNumberX - xCenterOfTable + xCenterOffset - listX/2, yForList+15, 3, false); ####
		draw_set_color(c_black)
		//draw_text(firstNumberX+1, yForList+1, strMarked); // Highlighted text
		draw_text(room_width/6 - listX/2 +1, yForList+1, strMarked); // Highlighted text ####
		draw_set_color(markedColor);
		//draw_text(firstNumberX, yForList, strMarked); // Highlighted text
		draw_text(room_width/6 - listX/2, yForList, strMarked); // Highlighted text ####
		draw_set_color(c_black);
		//draw_text(firstNumberX+string_width(strMarked)+1, yForList+1, strNotMarked);
		draw_text(room_width/6 - listX/2 + string_width(strMarked) +1, yForList+1, strNotMarked); // ####
		draw_set_color(notMarkedColor);
		//draw_text(firstNumberX+string_width(strMarked), yForList, strNotMarked);
		draw_text(room_width/6 - listX/2 + string_width(strMarked), yForList, strNotMarked); // ####
	}

	draw_set_color(fontColor); // To keep other elements with white color.

}

/* Exersise's numbers placement */
draw_set_font(fTableHeader);
draw_set_halign(fa_center); // Reset alignment for other drawings.
if(highlightedRow == -1){
	if(oLogicSpawner.divisionType and oLogicSpawner.divisionCounter == 1)
		draw_set_colour(current);
	else
		draw_set_colour(tableMarkedColor);
}

draw_text(xForNumberOne, yForHorizontalLine - headersOffset, string(oLogicSpawner.numberOneHeader)); // original numberOne

if(highlightedRow == -1){
	if(oLogicSpawner.divisionType and oLogicSpawner.divisionCounter == 2)
		draw_set_colour(current);
	else
		draw_set_colour(tableMarkedColor);
}

draw_text(xForNumberTwo, yForHorizontalLine - headersOffset, string(oLogicSpawner.numberTwoHeader)); // original numberTwo


draw_set_colour(fontColor); // Reset

/* Divisors */
if(!ds_list_empty(tableDivisors)){ // If divisors list isn't empty, then it starts drawing.
	/* Divisors at rightest column */
	for(i = 0; i < ds_list_size(tableDivisors); i++){
		if(i == highlightedRow + 1  and (oLogicSpawner.divisionType or oLogicSpawner.primeType))
			draw_set_colour(current);
		draw_text(xCenterOfTable + horizontalLineLarge + horizontalLineLarge/4, yForHorizontalLine - headersOffset + ySpaceBetweenElements*i, string(tableDivisors[| i]));
		draw_set_colour(fontColor); // Reset
	}
}

/* Partials */
if(!ds_list_empty(numberOnePartials)){
	draw_set_halign(fa_center);
	if(oLogicSpawner.primeType)
		highlightedRow = ds_list_size(numberOnePartials) - 1;	
	if(oLogicSpawner.divisionType)
		highlightedRow = ds_list_size(tableDivisors) - 2;
		
	for(i = 0; i < ds_list_size(numberOnePartials); i++){
		if(i == highlightedRow and (oLogicSpawner.divisionType or oLogicSpawner.primeType))
			if(oLogicSpawner.divisionType and oLogicSpawner.divisionCounter == 1)
				draw_set_colour(current);
			else
				draw_set_color(tableMarkedColor);
		draw_text(xForNumberOne, yForHorizontalLine - headersOffset + ySpaceBetweenElements*(i+1), string(numberOnePartials[| i])); 
		draw_set_colour(fontColor); // Reset
	}
}

if(!ds_list_empty(numberTwoPartials)){
	draw_set_halign(fa_center);
	if(oLogicSpawner.primeType)
		highlightedRow = ds_list_size(numberOnePartials) - 1;	
	if(oLogicSpawner.divisionType)
		highlightedRow = ds_list_size(tableDivisors) - 2;
		
	for(i = 0; i < ds_list_size(numberTwoPartials); i++){
		if(i == highlightedRow  and (oLogicSpawner.divisionType or oLogicSpawner.primeType))
			if(oLogicSpawner.divisionType and oLogicSpawner.divisionCounter == 2)
				draw_set_colour(current);
			else
				draw_set_color(tableMarkedColor);
		draw_text(xForNumberTwo, yForHorizontalLine - headersOffset + ySpaceBetweenElements*(i+1), string(numberTwoPartials[| i])); 
		draw_set_colour(fontColor); // Reset
	}
}


