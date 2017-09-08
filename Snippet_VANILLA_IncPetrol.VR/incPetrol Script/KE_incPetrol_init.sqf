player addEventHandler ["GetInMan", {
    _nil = [(_this select 0),(_this select 2)] execVM "incPetrol Script\KE_incPetrol_loop.sqf";
}];
player addEventHandler ["SeatSwitchedMan", {
    _nil = [(_this select 0),(_this select 2)] execVM "incPetrol Script\KE_incPetrol_loop.sqf";
}];
