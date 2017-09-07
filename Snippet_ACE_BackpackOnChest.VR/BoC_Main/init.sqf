//on chest
private	_action =	["zade_boc_onChest",(localize "str_zade_boc_OnChest"),"BoC_Main\icons\onchest_ca.paa",{[(_this select 1)] call zade_boc_fnc_actionOnChest;},{!(missionNamespace getVariable ['zade_boc_disabled',false]) && !(backpack (_this select 1) isEqualTo '') && ([(_this select 1)] call zade_boc_fnc_chestpack isEqualTo '') && (isNull objectParent (_this select 1))}] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","ACE_Equipment"],_action] call ace_interact_menu_fnc_addActionToObject;

//on back
private	_action =	["zade_boc_onChest",(localize "str_zade_boc_OnBack"),"BoC_Main\icons\onback_ca.paa",{[(_this select 1)] call zade_boc_fnc_actionOnBack;},{!(missionNamespace getVariable ['zade_boc_disabled',false]) && (backpack (_this select 1) isEqualTo '') && !([(_this select 1)] call zade_boc_fnc_chestpack isEqualTo '') && (isNull objectParent (_this select 1))}] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","ACE_Equipment"],_action] call ace_interact_menu_fnc_addActionToObject;

//on swap
private	_action =	["zade_boc_onChest",(localize "str_zade_boc_Swap"),"BoC_Main\icons\swap_ca.paa",{[(_this select 1)] call zade_boc_fnc_actionSwap;},{!(missionNamespace getVariable ['zade_boc_disabled',false]) && !(backpack (_this select 1) isEqualTo '') && !([(_this select 1)] call zade_boc_fnc_chestpack isEqualTo '') && (isNull objectParent (_this select 1))}] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","ACE_Equipment"],_action] call ace_interact_menu_fnc_addActionToObject;

//add eventhandler
[missionNamespace, "arsenalOpened", zade_boc_fnc_arsenalOpened] call BIS_fnc_addScriptedEventHandler;
