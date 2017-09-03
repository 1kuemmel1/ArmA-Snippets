//Deploy Ropes Action
private	_action =	["KE_Towing_Deploy_Main",(localize "STR_KE_ADV_TOWING_A_DEPOLY"),"\A3\3den\data\CfgWaypoints\scripted_ca.paa",{},{_this call SA_Take_Tow_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
  ["Car", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  ["Tank", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  ["Ship", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_Towing_Deploy_5m","5m","",{_this call SA_Take_Tow_Ropes_Action_5;},{_this call SA_Take_Tow_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
    ["Car", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Tank", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Ship", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  private	_action =	["KE_Towing_Deploy_10m","10m","",{_this call SA_Take_Tow_Ropes_Action;},{_this call SA_Take_Tow_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
    ["Car", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Tank", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Ship", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  private	_action =	["KE_Towing_Deploy_15m","15m","",{_this call SA_Take_Tow_Ropes_Action_15;},{_this call SA_Take_Tow_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
    ["Car", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Tank", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Ship", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  private	_action =	["KE_Towing_Deploy_20m","20m","",{_this call SA_Take_Tow_Ropes_Action_20;},{_this call SA_Take_Tow_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
    ["Car", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Tank", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Ship", 0, ["ACE_MainActions","KE_Towing_Deploy_Main"], _action, true] call ace_interact_menu_fnc_addActionToClass;

//Put Away Ropes Action
private	_action =	["KE_Towing_PutAway",(localize "STR_KE_ADV_TOWING_A_PUTAWAY"),"\A3\3den\data\Cfg3DEN\History\rotateItems_ca.paa",{_this call SA_Put_Away_Tow_Ropes_Action;},{call SA_Put_Away_Tow_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
  ["Car", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  ["Tank", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  ["Ship", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;

//Attach Ropes Action
private _condition = {call SA_Attach_Tow_Ropes_Action_Check};
private	_action =	["KE_Towing_AttachTo",(localize "STR_KE_ADV_TOWING_A_ATTACH"),"\A3\3den\data\CfgWaypoints\hook_ca.paa",{_this call SA_Attach_Tow_Ropes_Action;},_condition] call ace_interact_menu_fnc_createAction;
  ["Car", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  ["Tank", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  ["Ship", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;

//Drop Ropes Action
private _condition = {call SA_Drop_Tow_Ropes_Action_Check};
private	_action =	["KE_Towing_Drop",(localize "STR_KE_ADV_TOWING_A_DROP"),"\A3\3den\data\CfgWaypoints\move_ca.paa",{_this call SA_Drop_Tow_Ropes_Action;},_condition] call ace_interact_menu_fnc_createAction;
  [player,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;

//Remove Attached Ropes Action
private	_action =	["KE_Towing_Remove",(localize "STR_KE_ADV_TOWING_A_REMOVE"),"\A3\3den\data\CfgWaypoints\unhook_ca.paa",{_this call SA_Remove_Tow_Ropes_Action;},{_this call SA_Remove_Tow_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
  ["Car", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  ["Tank", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  ["Ship", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
//
//Pickup Ropes Action
private	_action =	["KE_Towing_Pickup_RopeEnd",(localize "STR_KE_ADV_TOWING_A_PICKUP"),"\A3\3den\data\CfgWaypoints\hold_ca.paa",{_this call SA_Pickup_Tow_Ropes_Action;},{(_this select 0) getVariable ["SA_KE_PickupAllowed_ACE", false]}] call ace_interact_menu_fnc_createAction;
  //["Sign_Sphere10cm_F", 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;
  ["Sign_Sphere10cm_F", 0, [], _action] call ace_interact_menu_fnc_addActionToClass;
//
