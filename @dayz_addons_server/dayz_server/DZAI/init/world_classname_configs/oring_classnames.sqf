/*
	Oring Classname Configuration
	
	Last updated: 11:22 AM 9/14/2013
	
*/

//Do not edit this file - See config files in 'oring' directory.

switch (DZAI_modName) do {
	case "epoch":
	{
		#include "epoch\dayz_epoch.sqf"
	};
	case default 
	{
		#include "oring\default.sqf"
	};
};
