Increases Petrol Usage - Script

Beschreibung:
Das Script erhöht den Benzinverbrauch von Fahrzeugen, Helikoptern, Flugzeugen und Booten.

Anmerkung:
Ggf. muss man die Verbrauchswerte noch anpassen.


Benötigte Mods:
- keine


----------------------------------------------------------------------------------------------
Anleitung:
1. Den Ordner "incPetrol Script" in dem Missionordner kopieren
2. In der Datei "initPlayerLocal.sqf" (wenn nicht vorhanden erstellen) folgendes eintragen:
```sqf
[] call compileFinal preprocessfilelinenumbers "incPetrol Script\KE_incPetrol_init.sqf";
```
3. (Optional) Für ein paar Einstellungsmöglichkeiten folgendes in die "Init.sqf" eintragen und ggf. anpassen:
```sqf
//setup increased petrol consumption script
_KE_incPetrol_overrideFuelconsumption = 10; //(optional) 0.5 = lower consumption | 1.5 = high consumption | 100 = hole in the fuel tank

//--- DO NOT EDIT BELOW --- START//
#define IF_ISNIL_SET(VAR1,VAR2) if (!isNil #VAR1) then {missionNamespace setVariable [VAR2, VAR1, true];};
IF_ISNIL_SET(_KE_incPetrol_overrideFuelconsumption,"KE_incPetrol_override")
//--- DO NOT EDIT ABOVE --- END//
```
