#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Edited: by maximum for better handling of actual uniforms
	Created for www.altisliferpg.com
*/
if(side player == independent) then {
	if (uniform player == "U_Rangemaster" && (__GETC__(life_mediclevel) == 0 OR __GETC__(life_mediclevel) == 1 OR __GETC__(life_mediclevel) == 2 OR __GETC__(life_mediclevel) == 3 OR __GETC__(life_mediclevel) == 4 OR __GETC__(life_mediclevel) == 5)) then {
		player setObjectTextureGlobal [0, "textures\med\EMS.jpg"];
	};
};
if(side player == WEST) then {
	// Basic cop uniform.
	if (uniform player == "U_Rangemaster" && (__GETC__(life_coplevel) == 0 OR __GETC__(life_coplevel) == 1)) then {
		player setObjectTextureGlobal [0, "textures\cop\clothing\APD_basic_uniform.jpg"]; 
	};
	// Basic cop uniform.
	if (uniform player == "U_Rangemaster" && (__GETC__(life_coplevel) == 2 OR __GETC__(life_coplevel) == 3)) then {
		player setObjectTextureGlobal [0, "textures\cop\clothing\APD_basic_uniform.jpg"]; 
	};
	// Basic cop uniform.
	if (uniform player == "U_Rangemaster" && (__GETC__(life_coplevel) == 4 OR __GETC__(life_coplevel) == 5 OR __GETC__(life_coplevel) == 6 OR __GETC__(life_coplevel) == 7 OR __GETC__(life_coplevel) == 8)) then {
		player setObjectTextureGlobal [0, "textures\cop\clothing\APD_basic_uniform.jpg"]; 
	};

	//Sheriff Uniform
	if (uniform player == "U_Competitor" && (__GETC__(life_coplevel) == 2 OR __GETC__(life_coplevel) == 3 OR __GETC__(life_coplevel) == 4 OR __GETC__(life_coplevel) == 5 OR __GETC__(life_coplevel) == 6 OR __GETC__(life_coplevel) == 7 OR __GETC__(life_coplevel) == 8)) then {
		player setObjectTextureGlobal [0, "textures\cop\clothing\APD-sheriff-uniform.jpg"]; 
	};
	
	//Swat Uniform
	if (uniform player == "U_B_CombatUniform_mcam" && (__GETC__(life_coplevel) == 2 OR __GETC__(life_coplevel) == 3 OR __GETC__(life_coplevel) == 4 OR __GETC__(life_coplevel) == 5 OR __GETC__(life_coplevel) == 6 OR __GETC__(life_coplevel) == 7 OR __GETC__(life_coplevel) == 8)) then {
		player setObjectTextureGlobal [0, "textures\cop\clothing\APD_swat_uniform.jpg"]; 
	};
};
// MCAM Cam
if(side player == civilian) then {
	if(side player == civilian && uniform player == "U_B_CombatUniform_mcam") then {
	player setObjectTextureGlobal [0, "textures\civilians\prisoner.paa"];
	};
	// Black and Yellow Shirt
	if(side player == civilian && uniform player == "C_man_p_beggar_F_euro") then {
	player setObjectTextureGlobal [0, "textures\civilians\blackyellow.paa"];
	};
	
};