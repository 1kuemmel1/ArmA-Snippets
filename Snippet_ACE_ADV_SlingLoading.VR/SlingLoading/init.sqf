//main action
private	_action =	["KE_ASL_Main_Outside","Seilwinde","\A3\ui_f\data\IGUI\Cfg\simpleTasks\types\container_ca.paa",{},{true}] call ace_interact_menu_fnc_createAction;
  ["Helicopter", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
  private	_action =	["KE_ASL_Main_Inside","Seilwinde","\A3\ui_f\data\IGUI\Cfg\simpleTasks\types\container_ca.paa",{},{true}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;

//deploy rope
private	_action =	["KE_ASL_Deploy","Seil ablassen","\A3\ui_f\data\IGUI\Cfg\VehicleToggles\SlingLoadRopeIconOn_ca.paa",{[1, _this] call ASL_Deploy_Ropes_Count_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 0) && ([(_this select 0)] call ASL_Can_Deploy_Ropes)}] call ace_interact_menu_fnc_createAction;
  ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Deploy_InVeh","Seil ablassen","\A3\ui_f\data\IGUI\Cfg\VehicleToggles\SlingLoadRopeIconOn_ca.paa",{[1, _this] call ASL_Deploy_Ropes_Count_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 0) && (_this call ASL_Deploy_Ropes_Action_Check_InVeh)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Deploy_1"," 1","",{[1, _this] call ASL_Deploy_Ropes_Count_Action_ACE;},{count([(_this select 0)] call ASL_Get_Sling_Load_Points) > 1;}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside","KE_ASL_Deploy"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Deploy_InVeh"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Deploy_2"," 2","",{[2, _this] call ASL_Deploy_Ropes_Count_Action_ACE;},{count([(_this select 0)] call ASL_Get_Sling_Load_Points) > 1;}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside","KE_ASL_Deploy"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Deploy_InVeh"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Deploy_3"," 3","",{[3, _this] call ASL_Deploy_Ropes_Count_Action_ACE;},{count([(_this select 0)] call ASL_Get_Sling_Load_Points) > 2;}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside","KE_ASL_Deploy"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Deploy_InVeh"], _action, true] call ace_interact_menu_fnc_addActionToClass;

//attach rope
private	_action =	["KE_ASL_Attach","Transportseil anbringen","\A3\3den\data\CfgWaypoints\hook_ca.paa",{_this call ASL_Attach_Ropes_Action;},{_this call ASL_Attach_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
  {[_x, 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass; false} count ["Car","Tank","Ship","ReammoBox_F"]; //"Slingload_base_F"

//drop rope
private	_action =	["KE_ASL_Drop","Transportseil fallen lassen","\A3\3den\data\CfgWaypoints\move_ca.paa",{_this call ASL_Drop_Ropes_Action_ACE;},{_this call ASL_Drop_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
  [player,1,["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;

//pickup rope
private	_action =	["KE_ASL_Pickup","Transportseil aufnehmen","\A3\3den\data\CfgWaypoints\hold_ca.paa",{_this call ASL_Pickup_Ropes_Action;},{(_this select 0) getVariable ["ASL_KE_PickupAllowed_ACE", false]}] call ace_interact_menu_fnc_createAction;
  ["Land_PencilGreen_F", 0, [], _action] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Pickup","test","\A3\3den\data\CfgWaypoints\hold_ca.paa",{_this call ASL_Pickup_Ropes_Action;},{true}] call ace_interact_menu_fnc_createAction;
    ["Sign_Sphere10cm_F", 0, [], _action] call ace_interact_menu_fnc_addActionToClass;

//remove rope
private	_action =	["KE_ASL_Remove","Transportseil entfernen","\A3\3den\data\CfgWaypoints\unhook_ca.paa",{_this call ASL_Remove_Ropes_Action;},{_this call ASL_Remove_Ropes_Action_Check && (_this select 0) getVariable ["ASL_KE_RopeAttached", false]}] call ace_interact_menu_fnc_createAction;
  {[_x, 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass; false} count ["Car","Tank","Ship","ReammoBox_F"]; //"Slingload_base_F"

//retract rope
private	_action =	["KE_ASL_Retract","Seil einziehen","\A3\3den\data\Cfg3DEN\History\rotateItems_ca.paa",{[0,_this] call ASL_Retract_Ropes_Index_Action_ACE_Single;},{[_this select 0] call ASL_Can_Retract_Ropes;}] call ace_interact_menu_fnc_createAction;
  ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Retract_InVeh","Seil einziehen","\A3\3den\data\Cfg3DEN\History\rotateItems_ca.paa",{[0,_this] call ASL_Retract_Ropes_Index_Action_ACE_Single;},{_this call ASL_Retract_Ropes_Action_Check_InVeh;}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Retract_1"," Vorn","",{[0,_this] call ASL_Retract_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] >= 2) &&  (["Front",_this] call ASL_Retract_Ropes_Action_Check_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside","KE_ASL_Retract"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Retract_InVeh"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Retract_2"," Mitte","",{[1,_this] call ASL_Retract_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 3) && (["Center",_this] call ASL_Retract_Ropes_Action_Check_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside","KE_ASL_Retract"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Retract_InVeh"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Retract_2_1"," Hinten","",{[1,_this] call ASL_Retract_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 2) && (["Rear",_this] call ASL_Retract_Ropes_Action_Check_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside","KE_ASL_Retract"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Retract_InVeh"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Retract_3"," Hinten","",{[2,_this] call ASL_Retract_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 3) && (["Rear",_this] call ASL_Retract_Ropes_Action_Check_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside","KE_ASL_Retract"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Retract_InVeh"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Retract_All"," Alle","",{{[_x,_this] call ASL_Retract_Ropes_Index_Action_ACE;}forEach [0,1,2];},{((_this select 0) getVariable ["ASL_KE_RopesDrop_Count", 0] >= 2)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 0, ["ACE_MainActions","KE_ASL_Main_Outside","KE_ASL_Retract"], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Retract_InVeh"], _action, true] call ace_interact_menu_fnc_addActionToClass;

//shorten rope
private	_action =	["KE_ASL_Shorten","Seil kürzen","\A3\3den\Data\CfgWaypoints\unload_ca.paa",{[0,_this] call ASL_Shorten_Ropes_Index_Action_ACE_Single;},{_this call ASL_Shorten_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
  ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Shorten_1"," Vorn","",{[0,_this] call ASL_Shorten_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] >= 2) && (["Front",_this] call ASL_Can_Adjust_Ropes_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Shorten"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Shorten_2"," Mitte","",{[1,_this] call ASL_Shorten_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 3) && (["Center",_this] call ASL_Can_Adjust_Ropes_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Shorten"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Shorten_2_1"," Hinten","",{[1,_this] call ASL_Shorten_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 2) &&  (["Rear",_this] call ASL_Can_Adjust_Ropes_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Shorten"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Shorten_3"," Hinten","",{[2,_this] call ASL_Shorten_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 3) && (["Rear",_this] call ASL_Can_Adjust_Ropes_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Shorten"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Shorten_All"," Alle","",{{[_x,_this] call ASL_Shorten_Ropes_Index_Action_ACE;}forEach [0,1,2];},{((_this select 0) getVariable ["ASL_KE_RopesDrop_Count", 0] >= 2) && (_this call ASL_Shorten_Ropes_Action_Check)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Shorten"], _action, true] call ace_interact_menu_fnc_addActionToClass;

//extend rope
private	_action =	["KE_ASL_Extend","Seil verlängern","\A3\3den\Data\CfgWaypoints\load_ca.paa",{[0,_this] call ASL_Extend_Ropes_Index_Action_ACE_Single;},{_this call ASL_Extend_Ropes_Action_Check;}] call ace_interact_menu_fnc_createAction;
  ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Extend_1"," Vorn","",{[0,_this] call ASL_Extend_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] >= 2) && (["Front",_this] call ASL_Can_Adjust_Ropes_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Extend"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Extend_2"," Mitte","",{[1,_this] call ASL_Extend_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 3) && (["Center",_this] call ASL_Can_Adjust_Ropes_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Extend"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Extend_2_1"," Hinten","",{[1,_this] call ASL_Extend_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 2) && (["Rear",_this] call ASL_Can_Adjust_Ropes_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Extend"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Extend_3"," Hinten","",{[2,_this] call ASL_Extend_Ropes_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 3) && (["Rear",_this] call ASL_Can_Adjust_Ropes_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Extend"], _action, true] call ace_interact_menu_fnc_addActionToClass;

   private	_action =	["KE_ASL_Extend_All"," Alle","",{{[_x,_this] call ASL_Extend_Ropes_Index_Action_ACE;}forEach [0,1,2];},{((_this select 0) getVariable ["ASL_KE_RopesDrop_Count", 0] >= 2) && (_this call ASL_Extend_Ropes_Action_Check)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Extend"], _action, true] call ace_interact_menu_fnc_addActionToClass;

//release cargo
private	_action =	["KE_ASL_Release","Fracht aushaken","\A3\3den\data\CfgWaypoints\unhook_ca.paa",{[0,_this] call ASL_Release_Cargo_Index_Action_ACE_Single;},{_this call ASL_Release_Cargo_Action_Check;}] call ace_interact_menu_fnc_createAction;
  ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Release_1"," Vorn","",{[0,_this] call ASL_Release_Cargo_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] >= 2) &&  (["Front",_this] call ASL_Release_Cargo_Action_Check_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Release"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Release_2"," Mitte","",{[1,_this] call ASL_Release_Cargo_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 3) && (["Center",_this] call ASL_Release_Cargo_Action_Check_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Release"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Release_2_1"," Hinten","",{[1,_this] call ASL_Release_Cargo_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 2) && (["Rear",_this] call ASL_Release_Cargo_Action_Check_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Release"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Release_3"," Hinten","",{[2,_this] call ASL_Release_Cargo_Index_Action_ACE;},{((_this select 0) getVariable ["ASL_KE_RopesDrop", 0] == 3) && (["Rear",_this] call ASL_Release_Cargo_Action_Check_ACE)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Release"], _action, true] call ace_interact_menu_fnc_addActionToClass;

  private	_action =	["KE_ASL_Release_All"," Alle","\A3\3den\data\CfgWaypoints\move_ca.paa",{{[_x,_this] call ASL_Release_Cargo_Index_Action_ACE;}forEach [0,1,2];},{((_this select 0) getVariable ["ASL_KE_RopesDrop_Count", 0] >= 2)}] call ace_interact_menu_fnc_createAction;
    ["Helicopter", 1, ["ACE_SelfActions","KE_ASL_Main_Inside","KE_ASL_Release"], _action, true] call ace_interact_menu_fnc_addActionToClass;
