


closeDialog 0;


hint "My teeth feel like they're going to fall out..... Yuck!";
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
    


for "_i" from 0 to 25 do
{
    
    
    "radialBlur" ppEffectAdjust  [random 0.01,random 0.01,0.1,0.1];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 7, 1, random 9];
    sleep 1;
};




"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;


"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;