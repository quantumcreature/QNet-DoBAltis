//Restraining (Shift + R)
case 19:
{
    if(_shift) then {_handled = true;};
	switch (playerSide) do
	{
	    case west:
		{
		if(_shift && !(player getVariable["restrained",false]) && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !life_knockout && speed cursorTarget < 1) then
		    {
			    [] call life_fnc_restrainAction;
			};
		};
		
		case civilian:
		{
		if(_shift && !(player getVariable["restrained",false]) && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [west,civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !life_knockout && speed cursorTarget < 1) then
		    {
			    [] call life_fnc_civRestrainAction;
			};
		};
	};
};

//Knock out, this is experimental and yeah...
case 34:
{
    if(_shift) then {_handled = true;};
	if(_shift && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1 && !(cursorTarget getVariable "restrained")) then
	{
		if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player || currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
		{
			[cursorTarget] spawn life_fnc_knockoutAction;
		};
	};
};
	 
case 38: //Shift + L Key = Emergency Lights - Radar
    {
        _veh = vehicle player;
        if (_shift && !_alt && !_ctrlKey) then
        {
            if(playerSide in [west,independent] && _veh != player && ((driver _veh) == player)) then
            {
                if(!isNil {_veh getVariable "lights"}) then
                {
                    if(playerSide == west) then
                    {
                        [_veh] call life_fnc_sirenLights;
                    } else {
                        [_veh] call life_fnc_medicSirenLights;
                    };
                };
            };
            _handled = true;
        };
        if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
    };
 
case 33: //F Key = Sirens
    {
        if (!_shift && !_alt && !_ctrlKey) then //F Key = EMS/Cops Sirens
        {
            _veh = vehicle player;
            if(playerSide in [west,independent] && _veh != player && !life_siren_active && ((driver _veh) == player)) then
            {
                [] spawn
                {
                    life_siren_active = true;
                    uiSleep 0.5;
                    life_siren_active = false;
                };
                if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
                if((_veh getVariable "siren")) then
                {
                    titleText [localize "STR_MISC_SirensOFF","PLAIN"];
                    _veh setVariable["siren",false,true];
                } else {
                    titleText [localize "STR_MISC_SirensON","PLAIN"];
                    _veh setVariable["siren",true,true];
                    if(playerSide == west) then {
                        [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                    } else {
                        [[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
                    };
                };
            };
        };
 
case 48: // B Key = "Move Bitch" Chirp for Cop & EMS
    {
        if (!_shift && !_alt && !_ctrlKey) then
        {
            _veh = vehicle player;
            if(playerSide in [west,independent] && _veh != player && !life_chirp_active && ((driver _veh) == player)) then
            {
                [] spawn
                {
                    life_chirp_active = true;
                    uiSleep 0.5;
                    life_chirp_active = false;
                };
                if(playerSide == west) then
                {
                    [[_veh],"life_fnc_copChirp",true,false] spawn life_fnc_MP;
                } else {
                    [[_veh],"life_fnc_medicChirp",true,false] spawn life_fnc_MP;
                };
            };
        };
    };
 