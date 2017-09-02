Simple add an action to ACE3 self menu to remove or add the ear protection for the Crewman KSK Helmet.

Einfache Action für ACE3 den Gehörschutz ,des Crewman KSK-Helms, anzubringen oder zu entfernen.

Benötigte Mods:
  - CBA_A3
  - ACE³
  - BWA3

Anleitung:
  1. Die Datei "KE_EarProtection_mount.sqf" in den Missionsordner kopieren
  2. In der Datei "initPlayerLocal.sqf" (wenn nicht vorhanden erstellen) folgendes eintragen:
      ```sqf
      _nil = execvM "KE_EarProtection_mount.sqf";
      ```
