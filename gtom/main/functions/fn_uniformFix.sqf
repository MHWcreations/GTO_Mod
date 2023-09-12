//script to prevent pants texture bug
scriptName "fn_uniformFix";

//gets short and longrange radio settings (if available? needs testing)
_tfarLocalSwSettings = (ACE_player call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwSettings;
_tfarLocalLrSettings = (ACE_player call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings;

//returns Loadout and sets it immediately
ACE_player setUnitLoadout [getUnitLoadout ACE_player, true];

//sets short and longrange radio settings (if available? needs testing)
[(ACE_player call TFAR_fnc_activeSwRadio), _tfarLocalSwSettings] call TFAR_fnc_setSwSettings;
[(ACE_player call TFAR_fnc_activeLrRadio), _tfarLocalLrSettings] call TFAR_fnc_setLrSettings;

//chat retuns script name at completion
systemChat "Uniform.sqf";