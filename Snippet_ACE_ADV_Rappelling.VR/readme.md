**ATTENTION: script is not finished/bug free!**

Advanced Rappelling Script

ACHTUNG: Dieses Script basiert auf dem Mods: AdvancedRappelling und AdvancedUrbanRappelling von sethduda (die ganze Ehre für die Erstellung geht and ihn)
Github-Link (AdvancedRappelling): https://github.com/sethduda/AdvancedRappelling
Github-Link (AdvancedUrbanRappelling): https://github.com/sethduda/AdvancedUrbanRappelling


Was ich geändert habe:
- Portierung um das ganze als Script zu nutzen
- ACE³ Interactionen hinzugefügt
- mehrer kleine Anpassungen

Beschreibung:
Das Script fügt eine Action zum ACE-Menu hinzu, die es dem Spieler ermöglicht sich aus Helikoptern und von Gebäuden(oder ähnlichen Strukturen) abzuseilen.

Benötigte Mods:
- CBA_A3
- ACE3

TODO:
- stringtable.xml nutzen
- den Code überarbeiten

-------------------------------------------------------------------------------------------------

Anleitung:
1. Den Ordner "Rappelling" in den Missionordner kopieren
2. In der "description.ext" folgendes eintragen:
```sqf
class CfgFunctions {
		#include "Rappelling\cfgfunctions.hpp"
};

class CfgSounds	{
		#include "Rappelling\cfgSounds.hpp"
	};
```
3. In der Datei "initPlayerLocal.sqf" (wenn nicht vorhanden erstellen) folgendes eintragen:
```sqf
[] call compileFinal preprocessfilelinenumbers "Rappelling\init.sqf";
```
4. (Optional) Für ein paar Einstellungsmöglichkeiten folgendes in die "Init.sqf" eintragen und ggf. anpassen:
```sqf
//--------------- Advanced Rappelling - Settings ------------------
// Überschreibt die Liste der erlauben Helikopter für das Abseilen
//standart: alle Helikopter werden unterstützt (Mod-Helikpoter können davon abweichen)
_AR_SUPPORTED_VEHICLES_OVERRIDE = ["Helicopter","VTOL_Base_F","CUP_CH47F_base","RHS_CH_47F"];

// Legt fest wieviele Personen sich gleichzeit abseilen können (wird für alle Helikopter festgelegt)
//standart: 6
_AR_MAX_RAPPEL_POINTS_OVERRIDE = 2;

//deaktiviert das Abseilen für die KI
_AR_DISABLE_AI = false;

//deaktiviert das Abseilen(von Gebäuden) für die KI
_AUR_DISABLE_AI = false;

// Man kann auch eingen Abseilpunkte beim Helikopter festlegen, wenn man die Standart-Punkte nicht nutzen möchte
/*
_AP_CUSTOM_RAPPEL_POINTS = [
    ["CUP_CH47F_base",["slingload0",[1.2,1.0,0.5],"fastrope0"]],
    ["RHS_CH_47F", ["slingload0","slingload1","fastrope0"]]
];
*/

//--- DO NOT EDIT BELOW --- START//
#define IF_ISNIL_SET(VAR1,VAR2) if (!isNil #VAR1) then {missionNamespace setVariable [VAR2, VAR1, true];};
IF_ISNIL_SET(_AR_DISABLE_AI,"AR_DISABLE_AI")
IF_ISNIL_SET(_AR_DISABLE_AI,"AR_DISABLE_AI")
IF_ISNIL_SET(_AR_SUPPORTED_VEHICLES_OVERRIDE,"AR_SUPPORTED_VEHICLES_OVERRIDE")
IF_ISNIL_SET(_AR_MAX_RAPPEL_POINTS_OVERRIDE,"AR_MAX_RAPPEL_POINTS_OVERRIDE")
IF_ISNIL_SET(_AP_CUSTOM_RAPPEL_POINTS,"AP_CUSTOM_RAPPEL_POINTS")
//--- DO NOT EDIT ABOVE --- END//
```

-------------------------------------------------------------------------------------------------
Bewegungen am Seil:

Advanced Rappelling:
  - ACE-Interactionsmenu = Abseilen beginnen
  - Nur von einem Helikopter aus möglich
  - Helikopter darf sich nicht zu schnell bewegen
  - Höhe zum Abseilen: ca. 10-30 m
  - Einmal am Seil ist eine Bewegung möglich mit:
    - W = nach Oben
    - S = nach Unten
    - ACE3-Eigenmenu = Seil loslassen

Advanced Urban Rappelling
  - ACE-Interactionsmenu = Abseilen beginnen
  - Spieler muss sich an einer Gebäudekante (oder ähnliche Struktur) befinden -> nur dann ist der Eintrag im ACE3-Eigenmenu ersichtlich.
  - Einmal am Seil ist eine Bewegung möglich mit:
    - W = nach Oben
    - S = nach Unten
    - A/D = nach Links und Rechts schwingen
    - LINKS-SHIFT = von der Wand abstoßen
    - ACE3-Eigenmenu = Seil loslassen
    - ACE3-Eigenmenu = wieder nach oben klettern (wenn man sich nahe genug an der oberen Kante befindet)
