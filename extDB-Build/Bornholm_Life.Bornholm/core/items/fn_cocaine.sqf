#include <macro.h>
private["_rndSong"];


closeDialog 0;

hint "snnnnnnniiiiiiiiiffffffffffffffff!!!!!!";
sleep 3;
hint "Ohhhhhhhhhhhhh Yeaahhhhhhhh! (**macho man voice**)";
_rndSong = round(random 2) + 1;
sleep 2;
if (_rndSong == 1) then {  playSound "cocaine"; };
if (_rndSong == 2) then {  playSound "cocaine1"; };



ppe = ppEffectCreate ["colorCorrections", 1555]; 
ppe ppEffectAdjust [1, 0.75, 0, [0.8,0.9,1,-0.1], [1,1,1,2], [-0.5,0,-1,5]]; 
ppe ppEffectCommit 1;
ppe ppEffectEnable true;

sleep 8;

ppe2 = ppEffectCreate ["filmGrain", 1555]; 
ppe2 ppEffectAdjust [0.3, -1, 0.3, 0.1, 2, false]; 
ppe2 ppEffectCommit 1;
ppe2 ppEffectEnable true;

sleep 8;

wetdist1 = ppEffectCreate ["wetDistortion", 2006];
wetdist1 ppEffectAdjust [1, 1.16, 0.32, 2.56, 0.8, 0.64, 2.64, 0, 0, 1.08, 0.08, 0, 0, 0, 1.77];
wetdist1 ppEffectEnable true;
wetdist1 ppEffectCommit 0;

sleep 8;

nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
nonapsi_ef ppEffectEnable true;
nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.025, [2.0, 0.5, 0.0, 0.0], [0.5, 0.0, 0.5, 1.0],[0.2,0.0,0.0, 8.7]];
nonapsi_ef ppEffectCommit 1;

sleep 10;

ppe ppEffectCommit 0;
ppe ppEffectEnable false; 
ppe2 ppEffectCommit 0;
ppe2 ppEffectEnable false;
wetdist1 ppEffectEnable false;
nonapsi_ef ppEffectCommit 0;
nonapsi_ef ppEffectEnable false;

life_cokedout = 0;