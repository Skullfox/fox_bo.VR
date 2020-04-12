disableSerialization;
[]spawn {
  for [{_i=1}, {_i<17}, {_i=_i+1}] do
  {

    _path = format["fox_bo\custom\script_%1.sqf",_i];
    _file = format["script_%1.sqf",_i];

    _idc = 75500 + _i;
    _name = format["%1",_file];
    _control = ( (findDisplay 75500) displayCtrl _idc );

    if ( _path call fox_bo_fnc_fileExists ) then {
      _control ctrlSetText _name;
      _control buttonSetAction format["execVM ""%1""",_path];
    }else{
      diag_log format["[%1] not available",_i];
      _control ctrlSetText format["[%1] not available",_i];
      _control ctrlEnable false;
    };
  };
};

[]spawn{
  [] execVM "fox_bo\custom\autoload.sqf";
};
