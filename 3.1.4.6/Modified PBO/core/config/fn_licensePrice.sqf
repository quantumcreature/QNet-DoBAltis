/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {1500}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {15000}; //Pilot/air license cost
	case "gun": {100}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {100000}; //Oil processing license cost
	case "cair": {5000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {15000}; //Coast guard license cost
	case "heroin": {100000}; //Heroin processing license cost
	case "marijuana": {50000}; //Marijuana processing license cost
	case "medmarijuana": {10000}; //Medical Marijuana processing license cost
	case "gang": {100000}; //Gang license cost
	case "rebel": {250000}; //Rebel license cost
	case "truck": {3500}; //Truck license cost
	case "diamond": {75000};
	case "salt": {12000};
	case "cocaine": {100000};
	case "sand": {14500};
	case "iron": {9500};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "home": {75000};
	case "stiller":{20000};
	case "liquor":{100000};
	case "bottler":{2000};
	case "mash":{5000};
};