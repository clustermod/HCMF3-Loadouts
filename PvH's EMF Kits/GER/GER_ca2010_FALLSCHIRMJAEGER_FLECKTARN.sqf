private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["BWA3_15Rnd_9x19_P8", "16Rnd_9x21_Mag"];
_defGrenades = ["rhs_mag_m67", "Chemlight_green", "ACE_Chemlight_HiGreen", "SmokeShell", "SmokeShellBlue", "SmokeShellGreen", "SmokeShellOrange", "SmokeShellPurple", "SmokeShellRed", "SmokeShellYellow", "ACE_M84", "rhs_mag_mk84", "Chemlight_red" ];
_defUniforms = ["CUP_U_B_GER_Flecktarn_6", "CUP_U_B_GER_Flecktarn_5"];
_defWeapons = ["rhsusf_bino_m24","hgun_P07_khk_F", "BWA3_P8"];
_defVests = [];
_defBackpacks = ["CUP_B_GER_Pack_Flecktarn"];
_defHeadgear = ["CUP_H_Ger_M92_Cover", "CUP_H_Ger_M92_Cover_GG_CB", "CUP_H_Ger_M92_Cover_GG_CF", "CUP_H_Ger_M92_Cover_GG" ];
_defFacewear = ["CUP_G_ESS_BLK","rhsusf_oakley_goggles_clr","rhs_goggles_clear","rhs_googles_orange","rhs_googles_yellow"];

// Made by Per_von_Harke

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableMagazines = ["CUP_30Rnd_556x45_G36"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Zeus
if (_role == "ZEUS") then
{
	_availableUniforms = ["CUP_U_B_GER_Flecktarn_3"];
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableMagazines = ["CUP_30Rnd_556x45_G36"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2","V_SmershVest_01_radio_F"];
	_availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d", "ItemMicroDAGR", "ItemcTab"];
	_availableBackpacks = [];
	_availableHeadgear = ["CUP_H_Ger_Beret_KSK_Red"];
	_availableFacewear = [];
};



// Team leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_Vector21Nite", "rhsusf_bino_klrt_Vector21", "CUP_arifle_G36A"];
	_availableMagazines = ["CUP_30Rnd_556x45_G36"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig"];
	_availableItems = ["ACRE_SEM_52SL", "ACRE_SEM70","cup_optic_g36dualoptics","cup_optic_g36dualoptics_3d", "ItemMicroDAGR"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_role == "MED") then
{
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableMagazines = ["CUP_30Rnd_556x45_G36"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "adv_aceCPR_AED", "kat_stethoscope", "kat_Pulseoximeter", "kat_larynx", "kat_chestSeal", "cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d","adv_aceCPR_AED"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_role == "AR") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_MG3"];
	_availableMagazines = ["CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = [];
	_availableMagazines = ["CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AG36"];
	_availableMagazines = ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_SmokeRed_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_SmokeGreen_M203", "CUP_1Rnd_SmokeYellow_M203", "ACE_40mm_Flare_white", "ACE_40mm_Flare_white", "CUP_FlareGreen_M203", "CUP_FlareRed_M203", "CUP_FlareYellow_M203", "CUP_30Rnd_556x45_G36"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableMagazines = ["CUP_30Rnd_556x45_G36"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MAT
if (_role == "MAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableMagazines = ["CUP_30Rnd_556x45_G36"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d"];
	_availableBackpacks = ["CUP_B_GER_Backpack_AT_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT with Carl Gustav
if (_role == "HAT1") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A", "CUP_launch_MAAWS", "launch_MRAWS_green_rail_F"];
	_availableMagazines = ["CUP_30Rnd_556x45_G36", "MRAWS_HEAT_F", "MRAWS_HEAT55_F", "MRAWS_HE_F"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d", "cup_optic_maaws_scope"];
	_availableBackpacks = ["CUP_B_GER_Backpack_AT_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT with Panzerfaust 3 , has both versions.
if (_role == "HAT2") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A", "CUP_launch_HCPF3", "CUP_launch_PzF3"];
	_availableMagazines = ["CUP_30Rnd_556x45_G36", "MRAWS_HEAT_F", "MRAWS_HEAT55_F", "MRAWS_HE_F"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d", "cup_optic_maaws_scope"];
	_availableBackpacks = ["CUP_B_GER_Backpack_AT_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Engineer
if (_role == "ENG") then
{
	player setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableMagazines = ["CUP_30Rnd_556x45_G36"];
	_availableVests = ["CUP_V_B_GER_Carrier_Rig_2"];
	_availableItems = ["cup_optic_g36dualoptics", "cup_optic_g36dualoptics_3d", "ToolKit"];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

//Populate with predefined items and whatever is already in the crate
_backpacks 	= (_availableBackpacks + _defBackpacks);
_items 		= (_availableVests + _availableItems + _availableUniforms + _defUniforms + _defVests + _defItems + _defFacewear + _availableFacewear + _defHeadgear + _availableHeadgear);
_magazines 	= (_availableMagazines + _defGrenades + _defMagazines);
_weapons 	= (_availableWeapons + _defWeapons);

if (!_rearmOnly) then {
	[_obj, _backpacks] 	call BIS_fnc_addVirtualBackpackCargo;
	[_obj, _items	 ] 	call BIS_fnc_addVirtualItemCargo;
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, _weapons	 ] 	call BIS_fnc_addVirtualWeaponCargo;
} else {
	[_obj, _magazines] 	call BIS_fnc_addVirtualMagazineCargo;
	[_obj, (_availableItems + _defItems)] call BIS_fnc_addVirtualItemCargo;
};


player setVariable ["EMF_KA_permittedGear", [_backpacks, _items, _magazines, _weapons], true];
