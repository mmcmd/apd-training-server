gearupStand = "Flag_US_F" createVehicle position player;


gearupStand addAction 
	[
		"<t color='#008000'>MK1 loadout</t>", 
		{
			comment "Remove existing items";
			removeAllWeapons player;
			removeAllItems player;
			removeAllAssignedItems player;
			removeUniform player;
			removeVest player;
			removeBackpack player;
			removeHeadgear player;
			removeGoggles player;

			comment "Add containers";
			player forceAddUniform "U_B_Wetsuit";
			for "_i" from 1 to 6 do {player addItemToUniform "20Rnd_762x51_Mag";};
			player addVest "V_PlateCarrierIAGL_oli";
			for "_i" from 1 to 10 do {player addItemToVest "20Rnd_762x51_Mag";};
			player addBackpack "B_Kitbag_mcamo";
			for "_i" from 1 to 15 do {player addItemToBackpack "FirstAidKit";};
			for "_i" from 1 to 13 do {player addItemToBackpack "20Rnd_762x51_Mag";};
			player addHeadgear "H_PilotHelmetFighter_O";
			player addGoggles "G_Bandanna_beast";

			comment "Add weapons";
			player addWeapon "srifle_DMR_03_khaki_F";
			player addPrimaryWeaponItem "optic_Arco_blk_F";
			player addWeapon "Rangefinder";

			comment "Add items";
			player linkItem "ItemMap";
			player linkItem "ItemCompass";
			player linkItem "ItemWatch";
			player linkItem "ItemRadio";
			player linkItem "ItemGPS";

			comment "Disable fatigue if it's not already";
			player enableFatigue False;  

		},
			removeBackpack player;
			removeHeadgear player;
			removeGoggles player;


			comment "Add containers";
			player forceAddUniform "U_B_Wetsuit";
			for "_i" from 1 to 3 do {player addItemToUniform "20Rnd_762x51_Mag";};
			player addVest "V_PlateCarrierIAGL_oli";
			player addBackpack "B_Kitbag_mcamo";
			for "_i" from 1 to 15 do {player addItemToBackpack "FirstAidKit";};
			player addHeadgear "H_PilotHelmetFighter_O";
			player addGoggles "G_Bandanna_beast";

			comment "Add weapons";
			player addWeapon "srifle_EBR_F";
			player addPrimaryWeaponItem "optic_Arco_blk_F";
			player addWeapon "Rangefinder";

			comment "Add items";
			player linkItem "ItemMap";
			player linkItem "ItemCompass";
			player linkItem "ItemWatch";
			player linkItem "ItemRadio";
			player linkItem "ItemGPS";

			comment "Disable fatigue if it's not already";
			player enableFatigue False;  

		},
		"<t color='#FF0000'>Teleport to OG arms</t>",
		{

			comment "Teleport to OG arms";
			player setPos [11206,8720.36,0];
		},
		"<t color='#FF0000'>Teleport to Drug peninsula</t>",
		{
			comment "Teleport to Drug";
			player setPos [14257.2,13032.5,0];
		},
	]

