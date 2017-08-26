/*
  Fügt eine einfache Action hinzu, welche es einem ermöglicht Fahrzeuge (Land und Luft) zu löschen.
*/

// ---------- 1.
// Gegenstand platzieren und folgendes in die Init einfügen:

this addAction ["<t size='1.3' color='#00c700'><img image='\a3\ui_f\data\igui\cfg\Actions\unloadAllVehicles_ca.paa' size='1.3'/> Fahrzeug entfernen</t>",
  {     private _vehs = (getPos del_pad01) nearEntities [["Car", "Motorcycle", "Tank", "Air"], 6.5];
        if (count _vehs isEqualTo 0) exitWith {hint "Nichts zum entfernen in der Nähe."};
        private _veh = _vehs select 0;
        private _vehName = getText (configFile >> "cfgVehicles" >> typeOf _veh >> "displayName");

        if (isEngineOn _veh) exitWith {
          hint format ["Bitte den Motor von %1 ausschalten",_vehName];};

        if (count (crew _veh) > 0) exitWith {
          hint format ["%1 ist nicht leer",_vehName];};

        if (!isTouchingGround _veh) exitWith {
          hint format ["%1 ist nicht auf dem Boden",_vehName];};

        [5, [_veh, _vehName],{
            deleteVehicle ((_this select 0) select 0);
            hint format ["%1 wurde entfernt",((_this select 0) select 1)];
        },{"Action abgebrochen"}, format ["%1 wird entfernt",_vehName], {true}] call ace_common_fnc_progressBar;
  },[],6,true,true,"(isNull objectParent player) && ((player distance _target) < 7)"];

// ---------- 2.
// Heli-Pad platzieren und wie folgt benennen (Variablenname)
del_pad01
