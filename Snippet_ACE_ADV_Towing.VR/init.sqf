enableSaving [false, false];
//settings for AdvancedTowing Script
_SA_MAX_TOWED_CARGO = 2;                       //vehicles can tow up to the max number - default: 2
_SA_TOW_LOCKED_VEHICLES_ENABLED = true;        //allow or disallow towing of locked vehicles - true/false
//_SA_TOW_SUPPORTED_VEHICLES_OVERRIDE = [ "Air", "Ship" ];       //customize which classes of objects can "deploy" tow ropes - default: ["Tank", "Car", "Ship"]

//--- DO NOT EDIT BELOW --- START//
#define IF_ISNIL_SET(VAR1,VAR2) if (!isNil #VAR1) then {missionNamespace setVariable [VAR2, VAR1, true];};
IF_ISNIL_SET(_SA_MAX_TOWED_CARGO,"SA_MAX_TOWED_CARGO")
IF_ISNIL_SET(_SA_TOW_LOCKED_VEHICLES_ENABLED,"SA_TOW_LOCKED_VEHICLES_ENABLED")
IF_ISNIL_SET(_SA_TOW_SUPPORTED_VEHICLES_OVERRIDE,"SA_TOW_SUPPORTED_VEHICLES_OVERRIDE")
//--- DO NOT EDIT ABOVE --- END//
