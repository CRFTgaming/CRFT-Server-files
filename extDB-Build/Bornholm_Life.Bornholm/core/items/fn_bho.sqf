


closeDialog 0;


hint "Wowwwwwwww, that dab was huge!!! Feel it already!";
sleep 3;


"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

_smoke = "SmokeShell" createVehicle position player;
if (vehicle player != player) then
    {
        _smoke attachTo [vehicle player, [-0.6,-1,0]];
    }
    else
    {
        _smoke attachTo [player, [0,-0.1,1.5]];
    };
	
sleep 2;
playSound "weedsong"; 



for "_i" from 0 to 10 do
{
    "chromAberration" ppEffectAdjust [random 0.02,random 0.02,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.12,random 0.12,0.5,0.05];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 2, 2, random 5];
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