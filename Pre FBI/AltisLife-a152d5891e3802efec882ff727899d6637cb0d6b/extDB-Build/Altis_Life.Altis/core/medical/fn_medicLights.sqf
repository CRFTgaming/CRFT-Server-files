/*
	File: fn_medicLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [255, 0, 0];
_lightBlue = [165, 41, 41];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightleft setLightColor _lightRed; 
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [0.1,0.1,2];

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.52]];
	};
	
	case "C_SUV_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.5,2.4,-0.7]];
	};
	
	case "C_Hatchback_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.38,2.2,-0.55]];
	};
	
	case "C_Heli_Light_01_civil_F":
	{
		_lightleft lightAttachObject [_vehicle, [0.9,-2.020,1.1]];
	};
};

_lightleft setLightAttenuation [0.2, 1.0, 300, 90]; 
_lightleft setLightIntensity 1.3;
_lightleft setLightFlareSize 0.6;
_lightleft setLightFlareMaxDistance 0;
_lightleft setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightright setLightColor _lightBlue; 
_lightright setLightBrightness 0.5;  
_lightright setLightAmbient [0.1,0.1,2]; 

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.52]];
	};
	
	case "C_SUV_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.5,2.4,-0.7]];
	};
	
	case "C_Hatchback_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.38,2.2,-0.55]];
	};
	
	case "C_Heli_Light_01_civil_F":
	{
		_lightright lightAttachObject [_vehicle, [-0.9,-2.020,1.1]];
	};
};
  
_lightright setLightAttenuation [0.2, 1.0, 300, 90]; 
_lightright setLightIntensity 1.3;
_lightright setLightFlareSize 0.6;
_lightright setLightFlareMaxDistance 0;
_lightright setLightUseFlare true;

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleft setLightDayLight true;
_lightright setLightDayLight true;

_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightright setLightBrightness 0.0;  
		sleep 0.10;
		_lightleft setLightBrightness 0.9;  
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  
		sleep 0.02;
		_lightright setLightBrightness 0.9;  
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;