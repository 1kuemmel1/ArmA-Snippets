enableSaving [false, false];
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
#define IF_ISNIL_SET(VAR1,VAR2) if (!isNil #VAR1) then {missionNamespace setVariable [VAR2, VAR1, true];};
IF_ISNIL_SET(_AR_DISABLE_AI,"AR_DISABLE_AI")
IF_ISNIL_SET(_AR_DISABLE_AI,"AR_DISABLE_AI")
IF_ISNIL_SET(_AR_SUPPORTED_VEHICLES_OVERRIDE,"AR_SUPPORTED_VEHICLES_OVERRIDE")
IF_ISNIL_SET(_AR_MAX_RAPPEL_POINTS_OVERRIDE,"AR_MAX_RAPPEL_POINTS_OVERRIDE")
IF_ISNIL_SET(_AP_CUSTOM_RAPPEL_POINTS,"AP_CUSTOM_RAPPEL_POINTS")
//--- DO NOT EDIT ABOVE --- END//
