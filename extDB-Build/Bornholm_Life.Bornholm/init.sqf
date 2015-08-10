enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
introSpawn = nil;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "KRON_Strings.sqf";
[] execVM "briefing.sqf"; //Load Briefing

StartProgress = true;

// Load add-on scripts.
[] execVM "addons\exec.sqf";
[] execVM "addons\scripts\script_intro.sqf";
[] execVM "R3F_LOG\init.sqf";
[] execVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "addons\teargas.sqf";
[] execVM "addons\scripts\3Dmarkers.sqf";
[]spawn
{
	if (local player) then
	{
		waitUntil {not(isNull (findDisplay 46))};
		(findDisplay 46) displayAddEventHandler
		[
			"KeyDown","if
				(
					((_this select 1) in actionKeys 'ForceCommandingMode')
				)
				then
				{
					true;
				};
		"];
	};
};