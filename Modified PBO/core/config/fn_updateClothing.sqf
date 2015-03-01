/*
	@author Mario2002 
	edited by Timothy "TimmaE" Hladky
*/

if(playerSide == west) then {
	switch(true) do {
		case (uniform player == "U_Rangemaster") : {
			player setObjectTextureGlobal [0,"textures\clothing\grunt.jpg"];
		};
		case (uniform player == "U_Competitor") : {
			player setObjectTextureGlobal [0,"textures\clothing\PoliceOfficer.paa"];
		};
		case (uniform player == "U_B_CombatUniform_mcam") : {
			player setObjectTextureGlobal [0,"textures\clothing\constableuniform.jpg"];
		};
		case (uniform player == "U_IG_Guerilla2_1") : {
			player setObjectTextureGlobal [0,"textures\clothing\agent.jpg"];
		};
		case (uniform player == "U_B_CombatUniform_mcam_worn") : {
			player setObjectTextureGlobal [0,"textures\clothing\swat.paa"];
		};
		case (uniform player == "U_B_SpecopsUniform_sgg") : {
			player setObjectTextureGlobal [0,"textures\clothing\commisioneruniform.jpg"];
		};
	};
	switch (true) do {
		case (backpack player == "B_Kitbag_cbr") : {
		(backpackContainer player) setObjectTextureGlobal [0, "textures\clothing\copbackpack.jpg"];
		};
		case (backpack player == "B_Kitbag_sgg") : {
		(backpackContainer player) setObjectTextureGlobal [0, "textures\clothing\aosbackpack.jpg"];
		};
	};
};

if(playerSide == independent) then {
	switch(true) do {
		case (uniform player == "U_I_HeliPilotCoveralls") : {
			player setObjectTextureGlobal [0,"textures\clothing\medic_uniform.jpg"];
		};	
		case(backpack player == "B_Carryall_khk") then {
		(backpackContainer player) setObjectTextureGlobal [0, "textures\clothing\medic_backpack.jpg"];
		};
	};
};