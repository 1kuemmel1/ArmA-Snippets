params [["_obj", objNull],["_rad", 500]];

private _action = [
 "KE_bomb_aceActionStart", "Activate EMP bomb", "",
  {(_this select 2) call KE_EB_fnc_loading;},{true}, {}, [_obj,_rad], [0,0,0.4], 5] call ace_interact_menu_fnc_createAction;
[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

//for debug
private _action = [
 "KE_bomb_aceActionStart_Self", "Activate EMP bomb remote", "",
  {(_this select 2) call KE_EB_fnc_loading;},{true}, {}, [d1,_rad], [0,0,0.4], 5] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
