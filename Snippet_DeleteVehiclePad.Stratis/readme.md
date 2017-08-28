/-----------------------------------------------------------------------------------
Fügt eine einfache Action hinzu, welche es einem ermöglicht Fahrzeuge zu löschen.
/-----------------------------------------------------------------------------------

Benötigte Mods:
  - CBA_A3
  - ACE³

Anleitung (ohne extra Datei):
1. Gegenstand platzieren und Inhalt der "AddAction_Init.sqf" in das Init-Feld einfügen
2. Heli-Pad (oder ähnliches) platzieren und wie folgt benennen (Variablenname) : del_pad01

Anleitung (mit DeleteVeh_Script.sqf)
1. DeleteVeh_Script.sqf in Missionsverzeichniss kopieren
2. Gegenstand platzieren und Befehlszeile in das Init-Feld eintragen

  - einfacher Befehl:
    Beispiel:
    ```sqf
    0 = [MEIN_HELIPAD, this] execVM "DeleteVeh_Script.sqf";
    ```

  -erweiterter Befehl mit allen Parametern
    0 = [MEIN_HELIPAD, OBJECT, ["TYPEN"], RADIUS, ZEIT, "ANGEZEIGTER TEXT"] execVM "DeleteVeh_Script.sqf";

    Beispiel:
    ```sqf
    0 = [MEIN_HELIPAD, OBJECT, ["Ship","Tank","Car","Air"], 10, 10, ""<t size='"0".5' color='#00c700'>Fahrzeug entfernen</t>"] execVM "DeleteVeh_Script.sqf";
    ```

3.  Heli-Pad (oder ähnliches) platzieren und wie oben festgelegt benennen (Variablenname)



Anmerkung:
  Marker werden aktuell nicht unterstützt.
