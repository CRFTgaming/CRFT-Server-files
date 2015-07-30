
playSound "imtheone";
sleep 5.5;
hint "This stuff feels amazing!!!!  Teh feelz....";
setaperture 24;
ppColor = ppEffectCreate ["ColorCorrections", 1999];
ppColor ppEffectEnable true;
ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
ppColor ppEffectCommit 0;

ppBlur = ppEffectCreate ["dynamicBlur", 505];
ppBlur ppEffectEnable true; 
ppBlur ppEffectAdjust [.5];
ppBlur ppEffectCommit 0;

ppInversion = ppEffectCreate ['colorInversion', 2555];
ppInversion ppEffectEnable true;
ppInversion ppEffectAdjust [1,1,1];
ppInversion ppEffectCommit 0;

ppGrain = ppEffectCreate ["filmGrain", 2005];
ppGrain ppEffectEnable true;
ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
ppGrain ppEffectCommit 0;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;

sleep 1;

setaperture 24;
ppColor = ppEffectCreate ["ColorCorrections", 1999];
ppColor ppEffectEnable true;
ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
ppColor ppEffectCommit 0;

ppBlur = ppEffectCreate ["dynamicBlur", 505];
ppBlur ppEffectEnable true; 
ppBlur ppEffectAdjust [.5];
ppBlur ppEffectCommit 0;

ppInversion = ppEffectCreate ['colorInversion', 2555];
ppInversion ppEffectEnable true;
ppInversion ppEffectAdjust [1,1,1];
ppInversion ppEffectCommit 0;

ppGrain = ppEffectCreate ["filmGrain", 2005];
ppGrain ppEffectEnable true;
ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
ppGrain ppEffectCommit 0;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;

sleep 1;

setaperture 24;
ppColor = ppEffectCreate ["ColorCorrections", 1999];
ppColor ppEffectEnable true;
ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
ppColor ppEffectCommit 0;

ppBlur = ppEffectCreate ["dynamicBlur", 505];
ppBlur ppEffectEnable true; 
ppBlur ppEffectAdjust [.5];
ppBlur ppEffectCommit 0;

ppInversion = ppEffectCreate ['colorInversion', 2555];
ppInversion ppEffectEnable true;
ppInversion ppEffectAdjust [1,1,1];
ppInversion ppEffectCommit 0;

ppGrain = ppEffectCreate ["filmGrain", 2005];
ppGrain ppEffectEnable true;
ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
ppGrain ppEffectCommit 0;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;

sleep 1;

nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
nonapsi_ef ppEffectEnable true;
nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 3.5, 0.2], [9.0, 7.0, 5.2, 4.5],[0.4,0.0,0.0, 0.7]];
nonapsi_ef ppEffectCommit 1;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;

sleep 1;

nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
nonapsi_ef ppEffectEnable true;
nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 2.5, 0.2], [2.0, 7.0, 6.0, 2.0],[0.4,0.0,0.0, 0.7]];
nonapsi_ef ppEffectCommit 1;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;

sleep 5.5;

setaperture 24;
ppColor = ppEffectCreate ["ColorCorrections", 1999];
ppColor ppEffectEnable true;
ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
ppColor ppEffectCommit 0;

ppBlur = ppEffectCreate ["dynamicBlur", 505];
ppBlur ppEffectEnable true; 
ppBlur ppEffectAdjust [.5];
ppBlur ppEffectCommit 0;

ppInversion = ppEffectCreate ['colorInversion', 2555];
ppInversion ppEffectEnable true;
ppInversion ppEffectAdjust [1,1,1];
ppInversion ppEffectCommit 0;

ppGrain = ppEffectCreate ["filmGrain", 2005];
ppGrain ppEffectEnable true;
ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
ppGrain ppEffectCommit 0;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;

sleep 1;

setaperture 24;
ppColor = ppEffectCreate ["ColorCorrections", 1999];
ppColor ppEffectEnable true;
ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
ppColor ppEffectCommit 0;

ppBlur = ppEffectCreate ["dynamicBlur", 505];
ppBlur ppEffectEnable true; 
ppBlur ppEffectAdjust [.5];
ppBlur ppEffectCommit 0;

ppInversion = ppEffectCreate ['colorInversion', 2555];
ppInversion ppEffectEnable true;
ppInversion ppEffectAdjust [1,1,1];
ppInversion ppEffectCommit 0;

ppGrain = ppEffectCreate ["filmGrain", 2005];
ppGrain ppEffectEnable true;
ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
ppGrain ppEffectCommit 0;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;

sleep 1;

setaperture 24;
ppColor = ppEffectCreate ["ColorCorrections", 1999];
ppColor ppEffectEnable true;
ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
ppColor ppEffectCommit 0;

ppBlur = ppEffectCreate ["dynamicBlur", 505];
ppBlur ppEffectEnable true; 
ppBlur ppEffectAdjust [.5];
ppBlur ppEffectCommit 0;

ppInversion = ppEffectCreate ['colorInversion', 2555];
ppInversion ppEffectEnable true;
ppInversion ppEffectAdjust [1,1,1];
ppInversion ppEffectCommit 0;

ppGrain = ppEffectCreate ["filmGrain", 2005];
ppGrain ppEffectEnable true;
ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
ppGrain ppEffectCommit 0;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;

sleep 1;

nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
nonapsi_ef ppEffectEnable true;
nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 3.5, 0.2], [9.0, 7.0, 5.2, 4.5],[0.4,0.0,0.0, 0.7]];
nonapsi_ef ppEffectCommit 1;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;

sleep 1;

nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
nonapsi_ef ppEffectEnable true;
nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 2.5, 0.2], [2.0, 7.0, 6.0, 2.0],[0.4,0.0,0.0, 0.7]];
nonapsi_ef ppEffectCommit 1;

sleep 5;

ppEffectDestroy ppColor;
ppEffectDestroy ppBlur;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;
ppEffectDestroy nonapsi_ef;
ppEffectDestroy nonapsi_ef2;
deletevehicle snow;
deletevehicle ps;
ppEffectDestroy ppe;
ppEffectDestroy ppe2;
ppEffectDestroy ppe3;
ppEffectDestroy wetdist1;
setaperture 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 16;

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 0.0]];
"colorCorrections" ppEffectCommit 0;