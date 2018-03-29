#define LOADING_TIME 5
#define LAODING_TEXT "EMP bomb loading..."
#define SOUND_EXPL "A3\Sounds_F\sfx\explosion1.wss"

params ["_obj","_rad"];

[LOADING_TIME,[_obj,_rad],{
    (_this select 0) params ["_obj","_rad"];
    playSound3D [SOUND_EXPL, _obj,true,(getPosASL _obj),0.3];
    [_obj,_rad] spawn KE_EB_fnc_boom;
},{},LAODING_TEXT] call ace_common_fnc_progressBar;
