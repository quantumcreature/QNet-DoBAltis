private["_dice"];

if(life_cash >= 10) then
{
	_dice = round random(100);
	life_cash = life_cash - 10;
	life_toilet = 0;
		
	if(_dice > 8) then
    {
		hint parseText "Das war befreiend! Du bist erfolgreich auf Toilette gegangen. <br/><br/>Mama ist stolz auf dich!";
    }
    else
    {
		hint "Tolle Leistung, Einstein! Du hast vergessen die Klobrille hochzuklappen. Jetzt hast du dich selbst vollgepinkelt. Aber immerhin ist nun die Blase leer. Versuch es vielleicht doch lieber mit Windeln.";
    };
	[] call life_fnc_hudUpdate;
}
else
{
	hint "Tut mir leid, du hast nicht genug Geld bei dir. Das benutzen der Toilette kostet 10$!";
};


