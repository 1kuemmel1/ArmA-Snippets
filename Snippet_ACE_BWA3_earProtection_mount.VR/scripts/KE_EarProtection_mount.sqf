/*
Simple add an action to ACE3 self menu to remove or add the ear protection for the Crewman KSK Helmet.

Einfache Action für ACE3 den Gehörschutz ,des Crewman KSK-Helms, anzubringen oder zu entfernen.
*/
private _condition_remove = {
    (headgear player) in ["BWA3_CrewmanKSK_Fleck_Headset","BWA3_CrewmanKSK_Tropen_Headset","BWA3_CrewmanKSK_Schwarz_Headset"]
};
private _condition_add = {
    (headgear player) in ["BWA3_CrewmanKSK_Fleck","BWA3_CrewmanKSK_Tropen","BWA3_CrewmanKSK_Schwarz"]
};

private _statement_remove = {
    if ((headgear player) isEqualTo "BWA3_CrewmanKSK_Fleck_Headset") then {
      player addHeadgear "BWA3_CrewmanKSK_Fleck";
    };
    if ((headgear player) isEqualTo "BWA3_CrewmanKSK_Tropen_Headset") then {
      player addHeadgear "BWA3_CrewmanKSK_Tropen";
    };
    if ((headgear player) isEqualTo "BWA3_CrewmanKSK_Schwarz_Headset") then {
      player addHeadgear "BWA3_CrewmanKSK_Schwarz";
    };
};
private _statement_add = {
    if ((headgear player) isEqualTo "BWA3_CrewmanKSK_Fleck") then {
      player addHeadgear "BWA3_CrewmanKSK_Fleck_Headset";
    };
    if ((headgear player) isEqualTo "BWA3_CrewmanKSK_Tropen") then {
      player addHeadgear "BWA3_CrewmanKSK_Tropen_Headset";
    };
    if ((headgear player) isEqualTo "BWA3_CrewmanKSK_Schwarz") then {
      player addHeadgear "BWA3_CrewmanKSK_Schwarz_Headset";
    };    
};

//ENG
//private _action = ["KE_EarProHel_Remove","Remove hearing protection","scripts\data\KE_ear_p_off.paa",_statement_remove,_condition_remove] call ace_interact_menu_fnc_createAction;
//GER
private _action = ["KE_EarProHel_Remove","Gehörschutz entfernen","scripts\data\KE_ear_p_off.paa",_statement_remove,_condition_remove] call ace_interact_menu_fnc_createAction;

//add action
[player, 1, ["ACE_SelfActions","ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToObject;


//ENG
//private _action = ["KE_EarProHel_Add","Apply hearing protection","scripts\data\KE_ear_p_on.paa",_statement_add,_condition_add] call ace_interact_menu_fnc_createAction;
//GER
private _action = ["KE_EarProHel_Add","Gehörschutz anbringen","scripts\data\KE_ear_p_on.paa",_statement_add,_condition_add] call ace_interact_menu_fnc_createAction;

//add action
[player, 1, ["ACE_SelfActions","ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToObject;
