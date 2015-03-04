#include < macro.h >
/ *

    file: fn_showMsg.sqf
    Author : Silex

* /
private [ "_ index" , "_ data" , "_ status" ] ;
_index = [ _this , 0,0 ] call BIS_fnc_param ;

disableSerialization ;
WAITUNTIL { isNull find display 88888 ! };
_Display = find display 88888 ;
_cMessageList = _Display displayCtrl 88882 ;
_cMessageShow = _Display displayCtrl 88887 ;
_cMessageHeader = _Display displayCtrl 88890 ;

_data = call compile ( _cMessageList lnbData [ _index , 0]);

_status = " [OFFLINE ] " ;
{
    if ( _x == getPlayerUID _data select 0 ) then
    {
        _status = "[ ONLINE ] " ;
        life_smartphoneTarget = _x ;
        ctrlEnable [ 887892 , true] ;
    };
} forEach playable units ;

_cMessageHeader ctrlSetText format [ "% 1% 2 wrote : " _ data select 3, _status ] ;
_cMessageShow ctrlSetText format [ "% 1 ", _ data select 2];