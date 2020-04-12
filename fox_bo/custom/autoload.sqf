/*
Set custom text [button,text]
*/

_scripts = [
  [1,"Display Hint"],
  [2,"Sidechat"],
  [3,"Flare"],
  [4,"Example"],
  [5,"script_5.sqf dont exist"]
];

// Do not touch below !!!
_display = (findDisplay 75500);
{
    _n = _x select 0;
    _text = _x select 1;

    (_display displayCtrl (75500 + _n ) ) ctrlSetText _text;

} forEach _scripts;
