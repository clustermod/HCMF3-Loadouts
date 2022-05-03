private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
params["_role", "_obj", "_rearmOnly"];
_availableUniforms = []; _availableWeapons = []; _availableMagazines = []; _availableVests = []; _availableItems = []; _availableBackpacks = []; _availableHeadgear = []; _availableFacewear = [];

// Define default gear
_defItems = ["cup_muzzle_tgpa_desert", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch"];
_defMagazines = ["CUP_30Rnd_545x39_AK74M_desert_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",  "rhs_VOG25P", "rhs_VOG25", "rhs_VG40TB", "rhs_VG40SZ", "rhs_VG40MD", "rhs_GRD40_Red", "rhs_GRD40_Green", "rhs_GRD40_White", "rhs_VG40OP_green", "rhs_VG40OP_red", "rhs_VG40OP_white"];
_defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
_defUniforms = ["rhs_uniform_gorka_1_a"];
_defWeapons = [];
_defVests = [];
_defBackpacks = ["rhs_rd54_vest", "rhs_rd54", "rhs_rd54_flora1", ""];
_defHeadgear = [];
_defFacewear = ["FGN_CauR_Shemag_brown", "LEN_Ess1"];

//
// Loadout made by Per_von_Harke
//
// Loadout is supposed to be some Angolan SOF unit that has pretty modern AK-74Ms.
// All loadouts are pretty light for long distance travel in deserts.

// Rifleman
if (_role == "RFL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert"];
	_availableMagazines = [];
	_availableVests = ["rhs_lifchik", "rhs_lifchik_light", "rhs_6sh92_vsr"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
	_availableFacewear = [];
};

// Squad Leader
if (_role == "SL") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert", "rhssaf_zrak_rd7j"];
	_availableMagazines = [];
	_availableVests = ["rhs_6sh92_vsr_radio", "rhs_lifchik_NCO"];
	_availableItems = [];
	_availableBackpacks = ["rhs_r148"];
	_availableHeadgear = ["CUP_H_Beret_HIL"];
	_availableFacewear = ["TRYK_SBeard_BW", "TRYK_SBeard", "TRYK_SBeard_BK"];
};

// Medic
if (_role == "MED") then
{
  [player, "UK3CB_BAF_Insignia_RedCross"] call BIS_fnc_setUnitInsignia;
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert"];
	_availableMagazines = [];
	_availableVests = ["rhs_lifchik", "rhs_lifchik_light", "rhs_6sh92_vsr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_stethoscope", "kat_stethoscope", "kat_larynx", "kat_chestSeal"];
	_availableBackpacks = [];
	_availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
	_availableFacewear = [];
};

// Grenadier
if (_role == "GRD") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_GL_railed_desert"];
	_availableMagazines = [];
	_availableVests = ["rhs_lifchik_vog", "rhs_6sh92_vsr_vog"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
	_availableFacewear = [];
};

// LAT
if (_role == "LAT") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK74M_railed_afg_desert", "CUP_arifle_AK74M_railed_desert", "rhs_weap_rpg26"];
	_availableMagazines = [];
	_availableVests = ["rhs_lifchik", "rhs_lifchik_light", "rhs_6sh92_vsr"];
	_availableItems = [];
	_availableBackpacks = [];
	_availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
	_availableFacewear = [];
};

// Medium Machinegunner
if (_role == "MMG") then
{
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_Pecheneg_desert"];
	_availableMagazines = [];
	_availableVests = ["rhs_lifchik_vog", "rhs_6sh92_vsr_vog"];
	_availableItems = ["cup_muzzle_snds_kzrzp_pk_desert"];
	_availableBackpacks = [];
	_availableHeadgear = ["H_Bandanna_khk", "H_Bandanna_cbr", "H_Booniehat_khk", "H_Booniehat_tan", "usm_bdu_boonie_odg", "usm_bdu_boonie_wdl", "usm_bdu_boonie_portliz", "usm_bdu_boonie_tgrstp"];
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
