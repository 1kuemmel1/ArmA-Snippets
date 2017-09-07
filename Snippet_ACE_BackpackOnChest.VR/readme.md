Backpack on Chest Script

ACHTUNG: Dieses Script basiert auf dem Mod: BackpackOnChest von DerZade (die ganze Ehre für die Erstellung geht and ihn).

Github-Link (AdvancedRappelling): https://github.com/DerZade/BackpackOnChest


Was ich geändert habe:
- Portierung um das ganze als Script zu nutzen
- ein paar kleine Anpassungen

Benötigte Mods:
- CBA_A3
- ACE3

-------------------------------------------------------------------------------------------------------

Anleitung:

1. Den Ordner "BoC_Main" in dem Missionordner kopieren
2. In der "description.ext" folgendes eintragen:
```sqf
class CfgFunctions {
		#include "BoC_Main\cfgFunctions.hpp"
};
```
3. In der Datei "initPlayerLocal.sqf" (wenn nicht vorhanden erstellen) folgendes eintragen:
```sqf
[] call compileFinal preprocessfilelinenumbers "BoC_Main\init.sqf";
```
4. Die Datei "stringtable.xml" in den Missionsordner Kopieren (ACHTUNG: ggf. nur den Inhalt der Datei kopieren, wenn diese schon vorhanden ist)
