parametersLoaded = undefined;
parametersStr = " ";

/* GAME'S LOGIC GLOBALS */
global.minNumber = undefined;
global.maxNumber = undefined;
global.minSpeed = undefined;
global.maxSpeed = undefined;
global.bonusProbability = undefined;
global.bonusPlus100 = undefined;
global.bonusMultiplier = undefined;
global.bonusFiftyFifty = undefined;
global.bonusShowCorrect = undefined;

/* OTHER GLOBALS */
global.debugMode = undefined;

var url = "http://localhost/popit/curl_con.php";
//var url = "http://popit.informaticapucv.cl/curl_con.php";
http_get(url);