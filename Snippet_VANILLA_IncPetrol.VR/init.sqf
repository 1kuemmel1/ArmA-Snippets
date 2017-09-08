enableSaving [false, false];

//setup increased petrol consumption script
_KE_incPetrol_overrideFuelconsumption = 10; //(optional) 0.5 = lower consumption | 1.5 = high consumption | 100 = hole in the fuel tank

//--- DO NOT EDIT BELOW --- START//
#define IF_ISNIL_SET(VAR1,VAR2) if (!isNil #VAR1) then {missionNamespace setVariable [VAR2, VAR1, true];};
IF_ISNIL_SET(_KE_incPetrol_overrideFuelconsumption,"KE_incPetrol_override")
//--- DO NOT EDIT ABOVE --- END//
