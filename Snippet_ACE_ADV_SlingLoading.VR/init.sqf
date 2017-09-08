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
#define IF_ISNIL_SET(VAR1,VAR2) if (!isNil #VAR1) then {missionNamespace setVariable [VAR2, VAR1, true];};
IF_ISNIL_SET(_ASL_SUPPORTED_VEHICLES_OVERRIDE,"ASL_SUPPORTED_VEHICLES_OVERRIDE")
IF_ISNIL_SET(_ASL_SLING_RULES_OVERRIDE,"ASL_SLING_RULES_OVERRIDE")
IF_ISNIL_SET(_ASL_HEAVY_LIFTING_ENABLED,"ASL_HEAVY_LIFTING_ENABLED")
IF_ISNIL_SET(_ASL_LOCKED_VEHICLES_ENABLED,"ASL_LOCKED_VEHICLES_ENABLED")
//--- DO NOT EDIT ABOVE --- END//
