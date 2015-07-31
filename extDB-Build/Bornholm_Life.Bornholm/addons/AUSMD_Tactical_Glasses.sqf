//Thermals_On = false;

addMissionEventHandler ["Draw3D",{
	if(goggles player == "G_Tactical_Clear" || goggles player == "G_Tactical_Black") then
	{
		{
			_markerPos = getmarkerPos _x;
			_colorS = getMarkerColor _x;
			_text = markerText _x;
			if(_text == "") then
			{
				_text = " ";
			};
			_dist = round(player distance _markerPos);
			if(_text != " ") then
			{
				_text = format ["%1 - %2m",_text,_dist];
			}
			else
			{
				_text = format ["%1m",_dist];
			};
			
			_color = (configfile >> "CfgMarkerColors" >> _colorS >> "color") call BIS_fnc_colorConfigToRGBA;
			
			if ( _color isEqualTo  [] ) then 
			{
				_color = [ 0, 0, 0, 1 ];    
			}
			else
			{
				if ( typeName ( _color select 0 ) == typeName "" ) then 
				{
					{
						_color set [ _forEachIndex, call compile _x ];
					} forEach _color;
				}; 
			};
			_path = getText(configFile >> "cfgMarkers" >> "mil_dot" >> "icon");
			drawIcon3D [_path, _color,_markerPos, 1, 1, 0,_text, 1, 0.025, "PuristaMedium"];
		} foreach allMapMarkers;
	};
}];

//player addaction ["Thermals On (TG)","AUSMD_Thermals_on.sqf",nil,1,False,True,"",' goggles player == "G_Tactical_Clear" && !Thermals_On || goggles player == "G_Tactical_Black" && !Thermals_On'];
//player addaction ["Thermals Off (TG)",{Thermals_On = false;},nil,1,False,True,"",' goggles player == "G_Tactical_Clear" && Thermals_On || goggles player == "G_Tactical_Black" && Thermals_On '];
