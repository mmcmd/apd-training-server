
break_engine = 0;
break_tail = 0;	
repair_vehicle = 0;
flag_action = 0;
break_random = 0;


player addEventHandler ["respawn",{removeAllWeapons player}];

execVM "random_event.sqf";

		
if !isserver then {		
	1 setRadioMsg "NULL"; 
	2 setRadioMsg "NULL";
	3 setRadioMsg "NULL";
	4 setRadioMsg "NULL";	
};		
		

/////////////////////////////////////////////////////////////////////////////////////
//Addaction
/////////////////////////////////////////////////////////////////////////////////////

		
while {true} do{
	{clearWeaponCargo _x;} forEach vehicles;
	{_x setVehicleAmmo 0;} forEach vehicles;
	
	if ((break_engine == 1) && (vehicle player != player)) then {
		vehicle player setHitPointDamage ["HitEngine", 1];
		break_engine = 0;	
	};		
	
	if ((break_tail == 1) && (vehicle player != player)) then {
		vehicle player setHitPointDamage ["HitVRotor", 1];
		break_tail = 0;	
	};		
	
	if ((repair_vehicle == 1) && (vehicle player != player)) then {
		vehicle player setDamage 0;
		repair_vehicle = 0;	
	};
	
	

///////////////////////////////////////////////////////////////////////////////
//Add or remove action based on if player is in a vehicle
///////////////////////////////////////////////////////////////////////////////

	if((vehicle player != player) && (flag_action == 0)) then {
		player addAction [ "<t color='#FF0000'>Engine failure</t>", { break_engine = 1 } ];
		player addAction [ "<t color='#FF0000'>Tailrotor failure</t>", { break_tail = 1 } ];
		player addAction [ "<t color='#0000FF'>Random failure within 1 min </t>", { break_random = 1 } ];
		player addAction [ "<t color='#00FF00'>Repair vehicle</t>", { repair_vehicle = 1 } ];
		flag_action = 1;	
	};
	
	if((vehicle player == player) && (flag_action == 1)) then {
		removeAllActions player;
		flag_action = 0;
	};	

	
};
