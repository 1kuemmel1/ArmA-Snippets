//define vars
#define SLEEP_STEP 0.001
#define CHANCE_SOUND 5
#define HEARING_DIST 400

#define MISSION_ROOT (__FILE__ select [0, count __FILE__ - 24])
#define SOUND_ROOT "EMP_Bomb\sounds\"

#define LIGHT_DMG_VALUE 0.97
#define LIGHT_SETHIT(obj) {obj setHit [_x, LIGHT_DMG_VALUE];} forEach ["light_1_hitpoint","light_2_hitpoint","light_3_hitpoint","light_4_hitpoint"]
#define LIGHT_SETHITINDEX(obj) {if ((typeOf obj) isEqualTo (_x select 0)) then {{obj setHitIndex [_x, LIGHT_DMG_VALUE];} forEach (_x select 1);};} count LIGHT_SPECIAL

#define LIGHT_CLASSES [ \
            "Lamps_base_F" \
          , "PowerLines_base_F" \
          , "PowerLines_Small_base_F" \
          , "Land_fs_roof_F" \
          , "Land_NavigLight" \
          , "PowerLines_Wires_base_F" \
          , "Land_PowerPoleWooden_L_F" \
          , "Land_Runway_PAPI" \
          , "Land_fs_sign_F" \
          , "Land_FuelStation_01_roof_malevil_F", "Land_FuelStation_01_roof_F" \
          , "Streetlamp"]

//light special: ["CLASSNAME",[HITINDEX OF THE LAMPS]]
#define LIGHT_SPECIAL [ \
           ["Land_PowLines_WoodL",[0,1]] \
          ,["Land_A_GeneralStore_01", [42,43,44,45]] \
          ,["Land_A_GeneralStore_01a", [42,43,44,45]] \
          ,["Land_Mil_Guardhouse", [8]] \
          ,["Land_NAV_Lighthouse", [0]] \
          ,["Land_Mil_House", [40,41,42,43,44,45,46,47]] \
          ,["Land_LightHouse_F", [0,1,2,3,4]] \
          ]

//get center and radius
params [["_center",objNull],["_rad",200]];

//create array for special objects
private _sA = [];
{_sA pushBack (_x select 0);} forEach LIGHT_SPECIAL;
//search for objects
private _foundObjs = nearestObjects [_center, ["man","car","tank","air"] + LIGHT_CLASSES + _sA,_rad];

{
  [{
      params ["_obj","_lights"];

      //set light status
      LIGHT_SETHIT(_obj);

      //handle lights for 'special' objects
      LIGHT_SETHITINDEX(_obj);

      //set veh light status
      _obj engineOn false;
      _obj setCollisionLight false;
      _obj setPilotLight false;

      //set damage on engines (motor and instruments)
      _obj setHitPointDamage ["hitEngine", 0.45];
      _obj setHitPointDamage ["HitAvionics", 0.45];

      //set gunlight status
      _obj enableGunLights "forceOff";
      _obj enableIRLasers false;

      //for player units
      if (isPlayer _obj) then {
        _obj action ["GunLightOff", _obj];
        _obj action ["IRLaserOff", _obj];
        _obj action ["nvGogglesOff", _obj];
      };

      //play sound
      if !(_obj isKindOf "MAN") then {
        private _playSound = selectRandomWeighted [true,CHANCE_SOUND,false,(100-CHANCE_SOUND)];
        if (_playSound) then {
          private _sound = selectRandom ["zap1","zap2","zap3","zap4"];
          playSound3D [format ["%1%2%3.wss",MISSION_ROOT,SOUND_ROOT,_sound], _obj];
        };
      };

    },[_x,LIGHT_CLASSES],SLEEP_STEP] call CBA_fnc_waitAndExecute;
  sleep SLEEP_STEP;

} count _foundObjs;
