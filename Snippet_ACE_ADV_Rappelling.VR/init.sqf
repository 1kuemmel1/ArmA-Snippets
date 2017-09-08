//-----------------------------------------------------------------
//--------------- Advanced Rappelling - Settings ------------------
// Überschreibt die Liste der erlauben Helikopter für das Abseilen
//standart: alle Helikopter werden unterstützt (Mod-Helikpoter können davon abweichen)
_AR_SUPPORTED_VEHICLES_OVERRIDE = ["Helicopter","VTOL_Base_F","CUP_CH47F_base","RHS_CH_47F"];

// Legt fest wieviele Personen sich gleichzeit abseilen können (wird für alle Helikopter festgelegt)
//standart: 6
_AR_MAX_RAPPEL_POINTS_OVERRIDE = 2;

//deaktiviert das Abseilen für die KI
_AR_DISABLE_AI = false;

//deaktiviert das Abseilen(von Gebäuden) für die KI
_AUR_DISABLE_AI = false;

// Man kann auch eingen Abseilpunkte beim Helikopter festlegen, wenn man die Standart-Punkte nicht nutzen möchte
/*
_AP_CUSTOM_RAPPEL_POINTS = [
    ["CUP_CH47F_base",["slingload0",[1.2,1.0,0.5],"fastrope0"]],
    ["RHS_CH_47F", ["slingload0","slingload1","fastrope0"]]
];
*/

//--- DO NOT EDIT BELOW --- START//
if (!isNil "_AR_DISABLE_AI") then {missionNamespace setVariable ["AR_DISABLE_AI", _AR_DISABLE_AI, true];};
if (!isNil "_AUR_DISABLE_AI") then {missionNamespace setVariable ["AUR_DISABLE_AI", _AR_DISABLE_AI, true];};
if (!isNil "_AR_SUPPORTED_VEHICLES_OVERRIDE") then {missionNamespace setVariable ["AR_SUPPORTED_VEHICLES_OVERRIDE", _AR_SUPPORTED_VEHICLES_OVERRIDE, true];};
if (!isNil "_AR_MAX_RAPPEL_POINTS_OVERRIDE") then {missionNamespace setVariable ["AR_MAX_RAPPEL_POINTS_OVERRIDE", _AR_MAX_RAPPEL_POINTS_OVERRIDE, true];};
if (!isNil "_AP_CUSTOM_RAPPEL_POINTS") then {missionNamespace setVariable ["AP_CUSTOM_RAPPEL_POINTS", _AP_CUSTOM_RAPPEL_POINTS, true];};
//--- DO NOT EDIT ABOVE --- END//
