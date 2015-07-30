
private["_rndSong","_smoke"];






closeDialog 0;


hint "Yeahhh!, a different Cannabis Cup winner every time!!!";
sleep 3;


"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;


_smoke = "SmokeShellPurple" createVehicle position player;
if (vehicle player != player) then
    {
        _smoke attachTo [vehicle player, [-0.6,-1,0]];
    }
    else
    {
        _smoke attachTo [player, [0,-0.1,1.5]];
    };

_rndSong = round(random 3) + 1;
sleep 2;
if (_rndSong == 1) then {  playSound "weedsong"; };
if (_rndSong == 2) then {  playSound "weedsong2"; };
if (_rndSong == 3) then {  playSound "weedsong3"; };
if (_rndSong == 4) then {  playSound "weedsong4"; };






for "_i" from 0 to 38 do
{
    "chromAberration" ppEffectAdjust [random 0.04,random 0.04,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.10];
    "radialBlur" ppEffectCommit 1;
    
    sleep 1;
};


"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;


"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;