show_debug_message("[TABLE CLEANING]");
mcmMessage = false;
highlightedRow = -1;
ds_list_clear(tableDivisors);
ds_list_clear(numberOnePartials);
ds_list_clear(numberTwoPartials);
ds_list_clear(oLogicSpawner.primeNumbersFound);
ds_list_clear(oLogicSpawner.alternativesList);
oLogicSpawner.multiplyAlternativesCreation = false;
oLogicSpawner.primeAlternativesCreation = true;
oLogicSpawner.exersiseJustCreated = true;