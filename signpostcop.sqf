gearupstand = "Land_InfoStand_V2_F" createVehicle [15195.2,17337,-3.8147e-006];


gearupstand addAction
				[
					"<t color='#008000'>MX loadout</t>",
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
				player forceAddUniform "U_B_GEN_Soldier_F";
				player addItemToUniform "FirstAidKit";
				for "_i" from 1 to 3 do {player addItemToUniform "30Rnd_65x39_caseless_mag";};
				player addVest "V_TacVest_blk_POLICE";
				for "_i" from 1 to 10 do {player addItemToVest "30Rnd_65x39_caseless_mag";};
				player addHeadgear "H_Cap_police";
				player addGoggles "G_Combat";

				comment "Add weapons";
				player addWeapon "arifle_MX_Black_F";
				player addPrimaryWeaponItem "acc_flashlight";
				player addPrimaryWeaponItem "optic_Arco_blk_F";
				player addWeapon "Binocular";

				comment "Add items";
				player linkItem "ItemMap";
				player linkItem "ItemCompass";
				player linkItem "ItemWatch";
				player linkItem "ItemRadio";
				player linkItem "ItemGPS";
				player linkItem "NVGoggles_OPFOR";


				comment "Disable fatigue if it's not already";
				player enableFatigue False;  

				}];
	
gearupstand addAction
				[
					"<t color='#008000'>MXM loadout</t>",
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
				player forceAddUniform "U_B_GEN_Soldier_F";
				player addItemToUniform "FirstAidKit";
				for "_i" from 1 to 3 do {player addItemToUniform "30Rnd_65x39_caseless_mag";};
				player addVest "V_TacVest_blk_POLICE";
				for "_i" from 1 to 10 do {player addItemToVest "30Rnd_65x39_caseless_mag";};
				player addHeadgear "H_Cap_police";
				player addGoggles "G_Combat";

				comment "Add weapons";
				player addWeapon "arifle_MXM_Black_F";
				player addPrimaryWeaponItem "acc_flashlight";
				player addPrimaryWeaponItem "optic_Arco_blk_F";
				player addWeapon "Binocular";

				comment "Add items";
				player linkItem "ItemMap";
				player linkItem "ItemCompass";
				player linkItem "ItemWatch";
				player linkItem "ItemRadio";
				player linkItem "ItemGPS";
				player linkItem "NVGoggles_OPFOR";

				comment "Disable fatigue if it's not already";
				player enableFatigue False;  

				}];

gearupstand addAction
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
				player forceAddUniform "U_B_GEN_Soldier_F";
				for "_i" from 1 to 2 do {player addItemToUniform "FirstAidKit";};
				for "_i" from 1 to 2 do {player addItemToUniform "20Rnd_762x51_Mag";};
				player addVest "V_TacVest_blk_POLICE";
				for "_i" from 1 to 8 do {player addItemToVest "20Rnd_762x51_Mag";};
				player addHeadgear "H_Cap_police";
				player addGoggles "G_Combat";

				comment "Add weapons";
				player addWeapon "srifle_DMR_03_F";
				player addPrimaryWeaponItem "acc_flashlight";
				player addPrimaryWeaponItem "optic_Arco_blk_F";
				player addWeapon "Binocular";

				comment "Add items";
				player linkItem "ItemMap";
				player linkItem "ItemCompass";
				player linkItem "ItemWatch";
				player linkItem "ItemRadio";
				player linkItem "ItemGPS";
				player linkItem "NVGoggles_OPFOR";

				comment "Disable fatigue if it's not already";
				player enableFatigue False;  

				}];




gearupstand addAction
				[
					"<t color='#FF0000'>Teleport to OG arms</t>",
				{
					comment "Teleport to OG arms";
					player setPos [11206,8720.36,0];
				}];

gearupstand addAction
				[
					"<t color='#FF0000'>Teleport to Drug peninsula</t>",
				{
					comment "Teleport to Drug";
					player setPos [14257.2,13032.5,0];
				}];


gearupstand addAction
				[
					"<t color='#49311C'>ARCO scope</t>",
				{
					comment "Sets optic to ARCO";
					player addPrimaryWeaponItem "optic_Arco_blk_F";
				}];

gearupstand addAction
				[
					"<t color='#49311C'>MRCO scope</t>",
				{
					comment "Sets optic to MRCO";
					player addPrimaryWeaponItem "optic_MRCO";
				}];


gearupstand addAction
				[
					"<t color='#49311C'>RCO scope</t>",
				{
					comment "Sets optic to RCO";
					player addPrimaryWeaponItem "optic_Rco_blk_F";
				}];
