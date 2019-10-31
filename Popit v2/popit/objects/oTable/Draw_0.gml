draw_set_font(fTableHeader);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/* Lines to make the table */
draw_line_width(xCenterOfTable - horizontalLineLarge, yForHorizontalLine, xCenterOfTable + horizontalLineLarge + horizontalLineLarge/2, yForHorizontalLine, tableLineWidth);
draw_line_width(xCenterOfTable + horizontalLineLarge, yForHorizontalLine - yAboveHorizontalLine, xCenterOfTable + horizontalLineLarge, yForHorizontalLine + yAboveHorizontalLine*8, tableLineWidth);

/* Actual exersise */
if(oLogicSpawner.divisionType){
	if(!is_undefined(oLogicSpawner.subDivisionNumber))
		draw_text(xCenterOfTable + xCenterOffset, yForExersise, "Divide "+string(oLogicSpawner.subDivisionNumber)+"/"+string(oLogicSpawner.numberHit));
}

if(oLogicSpawner.primeType){
	draw_text(xCenterOfTable + xCenterOffset, yForExersise, "Elige un número primo\nque pueda dividir al menos uno\n de los números de la tabla");	
}

/* Exersise's numbers placement */
draw_text(xForNumberOne, yForHorizontalLine - headersOffset, string(oLogicSpawner.numberOneHeader)); // Left Bubble Number
draw_text(xForNumberTwo, yForHorizontalLine - headersOffset, string(oLogicSpawner.numberTwoHeader)); // Right Bubble Number

/* Divisors */
if(!ds_list_empty(tableDivisors)){ // If divisors list isn't empty, then it starts drawing.
	/* Divisors at rightest column */
	for(i = 0; i < ds_list_size(tableDivisors); i++){
		draw_text(xCenterOfTable + horizontalLineLarge + horizontalLineLarge/4, yForHorizontalLine - headersOffset + ySpaceBetweenElements*i, string(tableDivisors[| i]));
	}
}

/* Partials */
if(!ds_list_empty(numberOnePartials)){
	for(i = 0; i < ds_list_size(numberOnePartials); i++){
		draw_text(xForNumberOne, yForHorizontalLine - headersOffset + ySpaceBetweenElements*(i+1), string(numberOnePartials[| i])); 
	}
}

if(!ds_list_empty(numberTwoPartials)){
	for(i = 0; i < ds_list_size(numberTwoPartials); i++){
		draw_text(xForNumberTwo, yForHorizontalLine - headersOffset + ySpaceBetweenElements*(i+1), string(numberTwoPartials[| i])); 
	}
}

if(multiplyMessage)
	draw_text(xCenterOfTable + xCenterOffset, yForExersise,"Ahora vamos a \n multiplicar");
