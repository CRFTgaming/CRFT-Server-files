if (isServer) then {
    _this animate ["HideConstruction", 1];
    _this animate ["HideServices", 0];
	_this animate ["HidePolice", 0];
    _this animate ["HideBackpacks", 1];
    _this animate ["HideBumper1", 0];
    _this animate ["HideBumper2", 0];
};


_this addAction ["Beacons On",{(_this select 0) animate ["BeaconsStart",1]},[],100,false,true,"","_target animationPhase 'BeaconsStart' < 0.8 AND Alive(_target) AND driver _target == _this"];
_this addAction ["Beacons Off",{(_this select 0) animate ["BeaconsStart",0]},[],20,false,true,"","_target animationPhase 'BeaconsStart' > 0.8 AND Alive(_target) AND driver _target == _this"];

Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightleft2","_lightright", "_lightright2","_leftRed"];
    _vehicle = con;

    _lightRed = [0.1, 0.1, 20];
    _lightBlue = [0.1, 0.1, 20];
    
    _lightleft = "#lightpoint" createVehicle getpos _vehicle;
	_lightleft setLightDayLight true;
    _lightleft setLightColor _lightRed;
    _lightleft2 setLightColor _lightRed; 	
    _lightleft setLightBrightness 0.2;  
    _lightleft setLightAmbient [0.1,0.1,2]; 
    _lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
	_lightleft2 lightAttachObject [_vehicle, [-0.60, 2.0, -0.6]];
    _lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
    _lightleft setLightIntensity 2;
    _lightleft setLightFlareSize 0.5;
	_lightleft2 setLightFlareSize 0.5;
    _lightleft setLightFlareMaxDistance 100;
    _lightleft setLightUseFlare true;
	_lightleft2 setLightUseFlare true;

    _lightright = "#lightpoint" createVehicle getpos _vehicle;   
    _lightright setLightColor _lightBlue;
	_lightright2 setLightColor _lightBlue;
	_lightright setLightDayLight true;
    _lightright setLightBrightness 0.2;  
    _lightright setLightAmbient [0.1,0.1,2]; 
    _lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	_lightright2 lightAttachObject [_vehicle, [0.60, 2.0, -0.6]];
    _lightright setLightAttenuation [0.181, 0, 1000, 130]; 
    _lightright setLightIntensity 2;
	_lightright2 setLightIntensity 2;
    _lightright setLightFlareSize 0.5;
    _lightright setLightFlareMaxDistance 100;
    _lightright setLightUseFlare true;
	_lightright2 setLightUseFlare true;
    
    _leftRed = true;  
    while{ (alive _vehicle)} do  
    {  
		if(!(_vehicle getVariable "lights")) exitWith {};
      if(_leftRed) then  
     {  
        _leftRed = false;  
    _lightright setLightBrightness 0.0;  
    sleep 0.05;
    _lightleft setLightBrightness 3;  
     }  
     else  
     {  
        _leftRed = true;  
    _lightleft setLightBrightness 0.0;  
    sleep 0.05;
    _lightright setLightBrightness 3;  
     };  
      sleep 0.2;  
    };  
    deleteVehicle _lightleft;
    deleteVehicle _lightright;