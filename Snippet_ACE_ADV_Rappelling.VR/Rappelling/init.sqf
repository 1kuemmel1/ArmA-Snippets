//rappelling (vehicles)
private	_action =	["AR_KE_Rappel","Abseilen","Rappelling\icons\icon_rope.paa",{_this call AR_Rappel_From_Heli_Action;},{_this call AR_Rappel_From_Heli_Action_Check;}] call ace_interact_menu_fnc_createAction;
  ["Helicopter", 1, ["ACE_SelfActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;

private	_action =	["AR_KE_Rappel_ReleaseRope","Seil loslassen","a3\3den\Data\Displays\Display3DEN\search_end_ca.paa",{[_this select 1] call AR_Rappel_Detach_Action;},{[_this select 1] call AR_Rappel_Detach_Action_Check;}] call ace_interact_menu_fnc_createAction;
  [player,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;

private	_action =	["AR_KE_Rappel_AI","KI abseilen lassen","a3\3den\Data\Displays\Display3DEN\PanelRight\modeGroups_ca.paa",{0 = _this spawn AR_Rappel_AI_Units_Action;},{[_this select 1] call AR_Rappel_AI_Units_From_Heli_Action_Check;}] call ace_interact_menu_fnc_createAction;
  ["Helicopter", 1, ["ACE_SelfActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;

//rappelling (urban)
private	_action =	["AUR_KE_Rappel","Abseilen","Rappelling\icons\icon_rope.paa",{[_this select 0, (vehicle (_this select 0))] call AUR_Rappel_Action_ACE;},{[_this select 0] call AUR_Rappel_Action_Check;}] call ace_interact_menu_fnc_createAction;
  [player,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;

private	_action =	["AUR_KE_Rappel_ReleaseRope","Seil loslassen","a3\3den\Data\Displays\Display3DEN\search_end_ca.paa",{[_this select 0] call AUR_Rappel_Detach_Action;},{[_this select 0] call AUR_Rappel_Detach_Action_Check;}] call ace_interact_menu_fnc_createAction;
  [player,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;

private	_action =	["AUR_KE_Rappel_ClimbBack","Nach oben klettern","a3\3den\Data\Displays\Display3DEN\EntityMenu\moveFlying_ca.paa",{[_this select 0] call AUR_Rappel_Climb_To_Top_Action;},{[_this select 0] call AUR_Rappel_Climb_To_Top_Action_Check;}] call ace_interact_menu_fnc_createAction;
  [player,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;

private	_action =	["AUR_KE_Rappel_AI","KI abseilen lassen","a3\3den\Data\Displays\Display3DEN\PanelRight\modeGroups_ca.paa",{0 = [_this select 0] spawn AUR_Rappel_AI_Units_Action},{[_this select 0] call AUR_Rappel_AI_Units_Action_Check;}] call ace_interact_menu_fnc_createAction;
  [player,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;
