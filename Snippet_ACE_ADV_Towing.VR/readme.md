Advanced Towing Script

ACHTUNG: Dieses Script basiert auf dem Mod : Advanced Towing von sethduda (die ganze Ehre für die Erstellung geht and ihn)
Github-Link: https://github.com/sethduda/AdvancedTowing

Was ich geändert habe:
  - Portierung um das ganze als Script zu nutzen
  - ACE³ Interactionen hinzugefügt
  - Stringtable.xml Nutzung (ENG/DE)
  - mehrer kleine Anpassungen

Beschreibung:
Das Script fügt eine Action hinzu die es dem Spieler ermöglicht Fahrzeuge abzuschleppen.

Benötigte Mods:
  - CBA_A3
  - ACE3

----------------------------------------------------------------------------------------------
Anleitung:
1. Den Ordner "Towing" in dem Missionordner kopieren
2. In der "description.ext" folgendes eintragen:
```sqf
class CfgFunctions {
		#include "Towing\cfgfunctions.hpp"
};
```
3. In der Datei "initPlayerLocal.sqf" (wenn nicht vorhanden erstellen) folgendes eintragen:
```sqf
[] call compileFinal preprocessfilelinenumbers "Towing\init.sqf";
```
4. Die Datei "stringtable.xml" in den Missionsordner Kopieren (ACHTUNG: ggf. nur den Inhalt der Datei kopieren, wenn diese schon vorhanden ist)

5. (Optional) Für ein paar Einstellungsmöglichkeiten folgendes in die "Init.sqf" eintragen und ggf. anpassen:
```sqf
//settings for AdvancedTowing Script
_SA_MAX_TOWED_CARGO = 2;                       //vehicles can tow up to the max number - default: 2
_SA_TOW_LOCKED_VEHICLES_ENABLED = true;        //allow or disallow towing of locked vehicles - true/false
//_SA_TOW_SUPPORTED_VEHICLES_OVERRIDE = [ "Air", "Ship" ];       //customize which classes of objects can "deploy" tow ropes - default: ["Tank", "Car", "Ship"]

//--- DO NOT EDIT BELOW --- START//
if (!isNil "_SA_MAX_TOWED_CARGO") then {missionNamespace setVariable ["SA_MAX_TOWED_CARGO", _SA_MAX_TOWED_CARGO, true];};
if (!isNil "_SA_TOW_LOCKED_VEHICLES_ENABLED") then {missionNamespace setVariable ["SA_TOW_LOCKED_VEHICLES_ENABLED", _SA_TOW_LOCKED_VEHICLES_ENABLED, true];};
if (!isNil "_SA_TOW_SUPPORTED_VEHICLES_OVERRIDE") then {missionNamespace setVariable ["SA_TOW_SUPPORTED_VEHICLES_OVERRIDE", _SA_TOW_SUPPORTED_VEHICLES_OVERRIDE, true];};
//--- DO NOT EDIT ABOVE --- END//
```
