enableSaving [false, false];
//--- Advanced Slingloading - Settings ---
// Überschreibt die Liste der erlauben Helikopter für das Slingload-System
//standart: alle Helikopter werden unterstützt (Mod-Helikpoter können davon abweichen) ["Helicopter","VTOL_Base_F"];
//bsp.: ["Helicopter","VTOL_Base_F","CUP_CH47F_base","RHS_CH_47F"]
_ASL_SUPPORTED_VEHICLES_OVERRIDE = ["Helicopter"];


// Gibt an was man alles anheben kann //standart: ["All","CAN_SLING","All"]
_ASL_SLING_RULES_OVERRIDE = [
    ["Air", "CAN_SLING", "All"],
    ["Air", "CANT_SLING", "Air"]
];

// Erkaubt es dem Spieler auch abgeschlossene Fahrzeuge anzuheben
_ASL_LOCKED_VEHICLES_ENABLED = false;

//
_ASL_HEAVY_LIFTING_ENABLED = true;


//--- DO NOT EDIT BELOW --- START//
if (!isNil "_ASL_SUPPORTED_VEHICLES_OVERRIDE") then {missionNamespace setVariable ["ASL_SUPPORTED_VEHICLES_OVERRIDE", _ASL_SUPPORTED_VEHICLES_OVERRIDE, true];};
if (!isNil "_ASL_SLING_RULES_OVERRIDE") then {missionNamespace setVariable ["ASL_SLING_RULES_OVERRIDE", _ASL_SLING_RULES_OVERRIDE, true];};
if (!isNil "_ASL_HEAVY_LIFTING_ENABLED") then {missionNamespace setVariable ["ASL_HEAVY_LIFTING_ENABLED", _ASL_HEAVY_LIFTING_ENABLED, true];};
if (!isNil "_ASL_LOCKED_VEHICLES_ENABLED") then {missionNamespace setVariable ["ASL_LOCKED_VEHICLES_ENABLED", _ASL_LOCKED_VEHICLES_ENABLED, true];};
//--- DO NOT EDIT ABOVE --- END//
