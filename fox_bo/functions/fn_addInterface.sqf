_unit = param[0,objNull];

if(local _unit)then{
	_unit addaction ["Interface",{createDialog "fox_bo_interface"}];

  _unit addEventHandler ["Respawn", {
  	params ["_unit", "_corpse"];
    [_unit] call fox_bo_fnc_addInterface;
  }];
};
