/* VARIABLES */
numberOnePartials = ds_list_create();
numberTwoPartials = ds_list_create();
tableDivisors = ds_list_create();

/* POSITIONS & SIZES */
xCenterOffset = 50; // This is to avoid putting the table to close to the play area.
xCenterOfTable = room_width/6 - xCenterOffset; // Limit for this area is room_width/3, and we need center of this area, so we divide this large by 2.
yForHorizontalLine = 100;
yAboveHorizontalLine = 30;
horizontalLineLarge = 100; // Added to each side of the center. Add extra 25% to right to place prime numbers divisors.
xForNumberOne = xCenterOfTable - horizontalLineLarge/1.5;
xForNumberTwo = xCenterOfTable + horizontalLineLarge/1.5;
tableLineWidth = 3;
headersOffset = 15;
ySpaceBetweenElements = 40;

show_debug_message("Center: "+string(xCenterOfTable));