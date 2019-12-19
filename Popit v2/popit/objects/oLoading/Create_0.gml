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


//var url = "https://popit.informaticapucv.cl/curl_exp.php";
var url = "http://192.168.0.12/popit/curl_con.php";
http_get(url);