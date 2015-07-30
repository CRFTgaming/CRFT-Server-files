


closeDialog 0;


hint "Now this is some clean LSD!";
sleep 3;


"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;


for "_i" from 0 to 155 do
{
    "chromAberration" ppEffectAdjust [random 0.40,random 0.40,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.04,random 0.04,0.40,0.40];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
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