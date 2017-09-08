//-----------------------------------------------------------------
//--------------- Advanced Rappelling - Settings ------------------
// Überschreibt die Liste der erlauben Hlikopter für das Abseilen
//standart: alle Helikopter werden unterstützt (Mod-Helikpoter können davon abweichen)
_AR_SUPPORTED_VEHICLES_OVERRIDE = ["Helicopter","VTOL_Base_F","CUP_CH47F_base","RHS_CH_47F"];

// Verbietet es dem Spieler wärend des abseilens seine Waffe abzufeuern (Nicht in der Script-Version enthalten)
//standart: true
_AR_DISABLE_SHOOTING_OVERRIDE = true;

// Legt fest wieviele Personen sich gleichzeit abseilen können (wird für alle Helikopter festgelegt)
//standart: 6
_AR_MAX_RAPPEL_POINTS_OVERRIDE = 2;

// Man kann auch eingen Abseilpunkte beim Helikopter festlegen, wenn man die Standart-Punkte nicht nutzen möchte
/*
_AP_CUSTOM_RAPPEL_POINTS = [
    ["CUP_CH47F_base",["slingload0",[1.2,1.0,0.5],"fastrope0"]],
    ["RHS_CH_47F", ["slingload0","slingload1","fastrope0"]]
];
*/
_AR_DISABLE_AI = false; //disable rappeling command for ai
_AUR_DISABLE_AI = false; //disable rappeling(urban) command for ai

//--- DO NOT EDIT BELOW --- START//
missionNamespace setVariable ["AR_DISABLE_AI", _AR_DISABLE_AI, true];
missionNamespace setVariable ["AUR_DISABLE_AI", _AUR_DISABLE_AI, true];
missionNamespace setVariable ["AR_DISABLE_SHOOTING_OVERRIDE", _AR_DISABLE_SHOOTING_OVERRIDE, true];
missionNamespace setVariable ["AR_MAX_RAPPEL_POINTS_OVERRIDE", _AR_MAX_RAPPEL_POINTS_OVERRIDE, true];
//missionNamespace setVariable ["AP_CUSTOM_RAPPEL_POINTS", _AP_CUSTOM_RAPPEL_POINTS, true];
missionNamespace setVariable ["AR_SUPPORTED_VEHICLES_OVERRIDE", _AR_SUPPORTED_VEHICLES_OVERRIDE, true];
//--- DO NOT EDIT ABOVE --- END//
