/*
Description:
  Fügt eine einfach Addaction um Fahrzeuge/Flugzeuge/usw. zu löschen

Author: kuemmel  

Parameters:
  _this select 0: Object (zb.: Heli-Pad)      | wo das fahrzeug stehen muss
  _this select 1: Object (zb.: Laptop)        | wo die aktion ausgeführt werden soll
  _this select 2: Array (zb.: ["Ship","Air"]) | welche typen gelöscht werden sollen
  _this select 3: Number (zb.: 10)            | radius in welchem nach fahrzeugen gerpüft werden soll
  _this select 4: Number (zb.: 3)             | dauer des "ladebalkens"
  _this select 5: String (zb.: "Hallo Welt")  | angezeigter addaction text

Beispiel:
  0 = [del_pad01, this] execVM "DeleteVeh_Script.sqf";
  0 = [del_pad01, this, ["Ship"], 15, 1, "<t size='1.2' color='#003bc7'>Boot löschen</t>"] execVM "DeleteVeh_Script.sqf";
  0 = [del_pad01, this, ["Car","Tank"], 10, 10, "Panzer entfernen"] execVM "DeleteVeh_Script.sqf";
  0 = [del_pad01, this, ["Car"], 10, 10, "<t size='0.5' color='#00c700'>Auto löschen</t>"] execVM "DeleteVeh_Script.sqf";

*/
params [ "_myPad","_obj",["_type",["Car", "Motorcycle", "Tank", "Air", "Ship"]],["_rad", 8.5],["_time", 5],["_text", "<t size='1.3' color='#00c700'><img image='\a3\ui_f\data\igui\cfg\Actions\ico_OFF_ca.paa' size='1.3'/> Fahrzeug entfernen</t>"]];

_obj addAction [_text, {
        (_this select 3) params ["_myPad","_type","_rad","_time"];
        private _vehs = nearestObjects [(getPos _myPad) , _type, _rad];
        if (count _vehs isEqualTo 0) exitWith {hint "Nichts zum entfernen in der Nähe."};
        _vehs params ["_veh"];
        private _vehName = getText (configFile >> "cfgVehicles" >> (typeOf _veh) >> "displayName");

        if (isEngineOn _veh) exitWith {
          hint format ["Bitte den Motor von %1 ausschalten",_vehName];};

        if (count (crew _veh) > 0) exitWith {
          hint format ["%1 ist nicht leer",_vehName];};

        if (getText (configFile >> "cfgVehicles" >> (typeOf _veh) >> "vehicleClass") isEqualTo "Ship") then {
          if (!surfaceIsWater (getPos _veh)) exitWith {
            hint format ["%1 ist nicht im Wasser",_vehName];};
        } else {
          if (!isTouchingGround _veh) exitWith {
            hint format ["%1 ist nicht auf dem Boden",_vehName];};
        };

        [_time, [_veh, _vehName],{
            deleteVehicle ((_this select 0) select 0);
            hint format ["%1 wurde entfernt",((_this select 0) select 1)];
        },{"Action abgebrochen"}, format ["%1 wird entfernt",_vehName], {true}] call ace_common_fnc_progressBar;
  },[_myPad,_type,_rad,_time],6,true,true,"(isNull objectParent player) && ((player distance _target) < 7)"];
