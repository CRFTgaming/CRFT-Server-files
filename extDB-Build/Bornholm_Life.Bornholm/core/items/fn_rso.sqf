
private["_maxHealth","_curHp","_minHealth"];

closeDialog 0;




hint "If only more people understood the healing effects of cannabis oil.";
sleep 2;


"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;





for "_i" from 0 to 4 do
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
sleep 2;


"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;

_maxHealth = 1.0;
_minHealth = 0;
for "_i" from 0 to 19 do
{	
	
	_curHp = getDammage player;
	if (_curHp <= 0.09) exitWith {};
	
	player setDamage (_curHp - 0.05);
    sleep 3;
};

