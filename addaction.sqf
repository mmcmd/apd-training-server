gearupStand = "Land_InfoStand_V2_F" createVehicle position player;



switch do {
	case 1 : {
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
					player addItemToUniform "FirstAidKit";
					for "_i" from 1 to 6 do {player addItemToUniform "20Rnd_762x51_Mag";};
					player addVest "V_PlateCarrier2_blk";
					for "_i" from 1 to 9 do {player addItemToVest "20Rnd_762x51_Mag";};
					player addBackpack "B_Kitbag_mcamo";
					for "_i" from 1 to 4 do {player addItemToBackpack "FirstAidKit";};
					for "_i" from 1 to 17 do {player addItemToBackpack "20Rnd_762x51_Mag";};
					player addGoggles "G_Bandanna_beast";

					comment "Add weapons";
					player addWeapon "srifle_DMR_03_khaki_F";
					player addPrimaryWeaponItem "acc_flashlight";
					player addPrimaryWeaponItem "optic_Arco";
					player addWeapon "Binocular";

					comment "Add items";
					player linkItem "ItemMap";
					player linkItem "ItemCompass";
					player linkItem "ItemWatch";
					player linkItem "ItemRadio";
					player linkItem "ItemGPS";
					player linkItem "NVGoggles";

					comment "Disable fatigue if it's not already";
					player enableFatigue False;  

				},
				];
	};
	
	case 2 : {
				[
					"<t color='#008000'>MK18 loadout</t>", 
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
					player addItemToUniform "FirstAidKit";
					for "_i" from 1 to 6 do {player addItemToUniform "20Rnd_762x51_Mag";};
					player addVest "V_PlateCarrier2_blk";
					for "_i" from 1 to 9 do {player addItemToVest "20Rnd_762x51_Mag";};
					player addBackpack "B_Kitbag_mcamo";
					for "_i" from 1 to 4 do {player addItemToBackpack "FirstAidKit";};
					for "_i" from 1 to 17 do {player addItemToBackpack "20Rnd_762x51_Mag";};
					player addGoggles "G_Bandanna_beast";

					comment "Add weapons";
					player addWeapon "srifle_EBR_F";
					player addPrimaryWeaponItem "acc_flashlight";
					player addPrimaryWeaponItem "optic_Arco";
					player addWeapon "Binocular";

					comment "Add items";
					player linkItem "ItemMap";
					player linkItem "ItemCompass";
					player linkItem "ItemWatch";
					player linkItem "ItemRadio";
					player linkItem "ItemGPS";
					player linkItem "NVGoggles";

					comment "Disable fatigue if it's not already";
					player enableFatigue False;  

				},
				];
	};

	case 3 : {
				[
					"<t color='#FF0000'>Teleport to OG arms</t>",
				{
					comment "Teleport to OG arms";
					player setPos [11206,8720.36,0];
				},
				];
	};

	case 4 : {
			[
				"<t color='#FF0000'>Teleport to Drug peninsula</t>",
			{
				comment "Teleport to Drug";
				player setPos [14257.2,13032.5,0];
			},
			];
	};

	case 5 : {
				[
					"<t>ARCO scope</t>",
				{
					comment "Sets optic to ARCO";
					player addPrimaryWeaponItem "optic_Hamr";
				},
				];
	};

	case 6 : {
				[
					"<t>MRCO scope</t>",
				{
					comment "Sets optic to MRCO";
					player addPrimaryWeaponItem "optic_MRCO";
				},
				];
	};

	case 7 : {
				[
					"<t>RCO scope</t>",
				{
					comment "Sets optic to RCO"
					player addPrimaryWeaponItem "optic_Rco_blk_F";
				}
				];
	}
}




gearupStand addAction ["MK1 loadout", "addaction.sqf", 1];
gearupStand addAction ["MK18 loadout", "addaction.sqf", 2];
gearupStand addAction ["OG arms teleport", "addaction.sqf", 3];
gearupStand addAction ["Drug peninsula teleport", "addaction.sqf", 4];
gearupStand addAction ["ARCO scope", "addaction.sqf", 5];
gearupStand addAction ["MRCO scope", "addaction.sqf", 6];
gearupStand addAction ["RCO scope", "addaction.sqf", 7];




