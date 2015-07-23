_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (_unit == player) then
{
	if (playerSide == independent) then
	{
		switch(true) do
		{
			case (__GETC__(life_mediclevel) == 0) : {player setObjectTextureGlobal [0, "textures\med\EMS.jpg"]; };

			case (__GETC__(life_mediclevel) == 1) : {player setObjectTextureGlobal [0, "textures\med\EMS.jpg"]; };

            case (__GETC__(life_mediclevel) == 2) : {player setObjectTextureGlobal [0, "textures\med\EMS.jpg"]; };

            case (__GETC__(life_mediclevel) == 3) : {player setObjectTextureGlobal [0, "textures\med\EMS.jpg"]; };

            case (__GETC__(life_mediclevel) == 4) : {player setObjectTextureGlobal [0, "textures\med\EMS.jpg"]; };

            case (__GETC__(life_mediclevel) == 5) : {player setObjectTextureGlobal [0, "textures\med\EMS.jpg"]; };
		};
	};
};