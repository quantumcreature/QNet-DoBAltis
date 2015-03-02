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
	 