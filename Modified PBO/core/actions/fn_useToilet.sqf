private["_dice"];

if(life_cash >= 10) then
{
	_dice = round random(100);
	life_cash = life_cash - 10;
	life_toilet = 0;
		
	if(_dice > 8) then
    {
		hint parseText "It was liberating! You have successfully gone to the toilet. <br/><br/>Mom is proud of you!";
    }
    else
    {
		hint "Great job , Einstein ! You forgot to lift up the toilet seat. Now you've peed yourself. But at least the bladder is empty now. Perhaps you prefer diapers.";
    };
	[] call life_fnc_hudUpdate;
}
else
{
	hint "Sorry , you did not have enough money with you. The use of the toilet costs 10$!";
};


