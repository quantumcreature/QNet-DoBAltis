enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "Anticheat.sqf"; //anticheat
[] execVM "addons\scripts\no_side_chat.sqf";


StartProgress = true;


"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf" };

// Init automatically saving gear
[] spawn life_fnc_autoSave;

fn_whoDunnit = compile preprocessFileLineNumbers "scripts\fn_whoDunnit.sqf";

MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
	
};
// mod cruise control
call mod_cruiseControl;

// Load add-on scripts.
//[] execVM "addons\scripts\script_fastrope.sqf";
// [] execVM "addons\SurviveHeliCrash\check.sqf";
[] execVM "addons\exec.sqf";
[] execVM "addons\scripts\script_intro.sqf";
//[] execVM "addons\scripts\HB_dragBody.sqf";
enableRadio false;
0 fadeRadio 0;