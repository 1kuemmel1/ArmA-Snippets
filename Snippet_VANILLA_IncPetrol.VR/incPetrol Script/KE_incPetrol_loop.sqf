params ["_player","_veh"];

if (driver _veh isEqualTo _player) then {
  private _div = 0.9;
  //----------------------
  //basic values
  //----------------------
  //cars and tanks
  if (_veh isKindOf "Landvehicle") then                 { _div = 0.07; };
  //small cars
  if (_veh isKindOf "Car") then                         { _div = 0.06; };
  //trucks
  if (_veh isKindOf "Truck_F") then                     { _div = 0.07; };
  //apc wheeled
  if (_veh isKindOf "APC_Wheeled_01_base_F") then       { _div = 0.08; };
  //tanks
  if (_veh isKindOf "Tank") then                        { _div = 0.12; };
  //apc tracked
  if (_veh isKindOf "APC_Tracked_01_base_F") then       { _div = 0.10; };
  //special
  if (_veh isKindOf "B_APC_Tracked_01_CRV_F") then      { _div = 0.04; };

  //jets and helos
  if (_veh isKindOf "Air") then                         { _div = 0.07; };
  if (_veh isKindOf "Helicopter") then                  { _div = 0.10; };
  //small helos
  if (_veh isKindOf "Heli_Light_01_base_F") then        { _div = 0.08; };
  //mid and large helos
  if (_veh isKindOf "Helicopter_Base_H") then           { _div = 0.09; };

  if (_veh isKindOf "Plane") then                       { _div = 0.03; };
  //fighter jets
  if (_veh isKindOf "Plane_Fighter_01_Base_F") then     { _div = 0.05; };
  //cas jets
  if (_veh isKindOf "Plane_CAS_01_base_F") then         { _div = 0.03; };

  //ships and boats
  if (_veh isKindOf "Ship") then                        { _div = 0.06; };
  //mid boats
  if (_veh isKindOf "Boat_F") then                      { _div = 0.07; };
  //small boats
  if (_veh isKindOf "Rubber_duck_base_F") then          { _div = 0.05; };
  //large boats
  if (_veh isKindOf "Boat_Armed_01_base_F") then        { _div = 0.09; };
  //----------------------

  private _modifier = missionNamespace getVariable ["KE_incPetrol_override", 1];
  _div = _div * _modifier;

  private _mID = format ["ID_%1",(random 100000)];
  [_mID, "onEachFrame", {
    params ["_mID","_veh","_player","_div"];

    if (isEngineOn _veh) then {
        _veh setFuel ((fuel _veh) - ((_div/1000000)*speed _veh));
    };

    if !(driver _veh isEqualTo _player) exitWith {
          [_mID, "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
      if !(alive _veh) exitWith {
          [_mID, "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
      };
    };
  },[_mID,_veh,_player,_div]] call BIS_fnc_addStackedEventHandler;
};
