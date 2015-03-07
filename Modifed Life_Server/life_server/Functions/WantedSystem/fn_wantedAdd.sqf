        private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
    case "187V": {_type = ["Reckless driving",6500]};
    case "187": {_type = ["murder",60000]};
    case "901": {_type = ["prison escape",4500]};
    case "261": {_type = ["robbery",5000]};
    case "261A": {_type = ["attempted robbery",3000]};
    case "215": {_type = ["Attempted car theft",2000]};
    case "213": {_type = ["Use of illegal explosives",10000]};
    case "211": {_type = ["Robbery / Theft",1000]};
    case "207": {_type = ["abduction",3500]};
    case "207A": {_type = ["attempted kidnapping",2000]};
    case "487": {_type = ["car theft",1500]};
    case "488": {_type = ["theft",700]};
    case "480": {_type = ["Hit and Run",1300]};
    case "481": {_type = ["drug possession",1000]};
    case "482": {_type = ["Attempted drug trafficking",5000]};
    case "483": {_type = ["drug trafficking",9500]};
    case "503": {_type = ["Trading exotic goods",25000]};
    
    case "1": {_type = ["Driving without a license",1500]};
    case "2": {_type = ["Attempted theft civilian vehicle",3500]};
    case "3": {_type = ["Theft of civilian vehicles",5000]};
    case "4": {_type = ["Driving without lights",350]};
    case "5": {_type = ["excessive speed",3500]};
    case "6": {_type = ["Dangerous driving",2500]};
    case "7": {_type = ["Attempted theft police vehicle",7500]};
    case "8": {_type = ["Theft of police vehicles",20000]};
    case "9": {_type = ["Landing in a no-fly zone",2500]};
    case "10": {_type = ["Driving illegal vehicles",10000]};
    case "11": {_type = [""hit and run after accident",5000]};
    case "12": {_type = ["Driver fleeing from the police",7500]};
    case "13": {_type = ["Driving over another person",25000]};
    case "14": {_type = ["Illegal roadblocks",5000]};
    case "15": {_type = ["Civil disorder",15000]};
    case "16": {_type = ["Following police vehicles",5000]};
    case "17": {_type = ["insulting authorities",2500]};
    case "18": {_type = ["Assaulting a police officer",8000]};
    case "19": {_type = ["entering restricted areas",5000]};
    case "20": {_type = ["Killing of a police officer",25000]};
    case "21": {_type = ["Fire on police / officials / property",15000]};
    case "22": {_type = ["Destruction of police property",15000]};
    case "23": {_type = ["drug offenses",12000]};
    case "24": {_type = ["Possession of firearms without a license",5000]};
    case "25": {_type = ["brandishing firearms in city limits",2500]};
    case "26": {_type = ["Possession of a prohibited weapon",10000]};
    case "27": {_type = ["Use of firearms within cities",10000]};
    case "28": {_type = ["Taking hostages",30000]};
    case "29": {_type = ["Attack on persons / vehicles",10000]};
    case "30": {_type = ["bank robbery",200000]};
    case "31": {_type = ["murder",60000]};
    case "32": {_type = ["Inciting a riot",35000]};
    case "33": {_type = ["engaging in rebel activities",35000]};
    case "34": {_type = ["Attack / Siege of capitals",25000]};
    case "35": {_type = ["landing in a no-fly zone ",1500]};
    case "36": {_type = ["Fly / hover below 150m in cities",2000]};
    case "37": {_type = ["Escape from prison",25000]};
    case "38": {_type = ["Flying without flying license",1200]};
    case "39": {_type = ["Disturbing the peace",1000]};
    case "40": {_type = ["Trading exotic goods",25000]};
    default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call fnc_index;

if(_index != -1) then
{
    _data = life_wanted_list select _index;
    _crimes = _data select 2;
    _crimes set[count _crimes,(_type select 0)];
    _val = _data select 3;
    life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
    else
{
    life_wanted_list set[count life_wanted_list,[_name,_uid,[(_type select 0)],(_type select 1)]];
};

diag_log format["WANTED_LIST = %1", life_wanted_list];

_gesuchter = [life_wanted_list] call DB_fnc_mresArray;
_query = format["UPDATE wanted set list = '%1'", _gesuchter];


waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;