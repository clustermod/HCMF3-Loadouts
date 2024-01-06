params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ItemGPS", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhs_weap_rshg2", "rhs_weap_tt33"];
private _defAttachments = [];
private _defMagazines = ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M", "rhs_100Rnd_762x54mmR_7N26", "rhs_100Rnd_762x54mmR_green", "CUP_30Rnd_545x39_AK12_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK12_M", "rhs_mag_762x25_8", "rhs_GRD40_Green", "rhs_GRD40_Red", "rhs_GRD40_White", "rhs_VOG25P", "rhs_VG40TB", "rhs_VG40OP_green", "rhs_VG40OP_red", "rhs_VG40OP_white"];
private _defGrenades = ["rhs_mag_rgd5", "rhs_mag_f1", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspn_green", "rhs_mag_nspn_red", "rhs_mag_nspn_yellow"];
private _defUniforms = ["CUP_U_O_RUS_Ratnik_Summer"];
private _defVests = [];
private _defBackpacks = ["CUP_O_RUS_Patrol_bag_Green", "CUP_O_RUS_Patrol_bag_Summer"];
private _defHeadgear = ["rhs_beanie_green", "rhs_Booniehat_digi", "CUP_H_RUS_6B27_headset"];
private _defFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "rhs_balaclava", "G_Balaclava_blk"];

//
// Made for Arma 3 Virtual MILSIM
//
// Loadout made by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_VG_black", "CUP_arifle_AK12_black", "CUP_arifle_AK12_AFG_black"];
	_availableAttachments = ["rhs_acc_1p87"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader
if (_condition && _role in ["SL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_VG_black", "CUP_arifle_AK12_black", "CUP_arifle_AK12_AFG_black"];
	_availableAttachments = ["rhs_acc_1p87"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_condition && _role in ["MED"]) then {
	_unit setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_VG_black", "CUP_arifle_AK12_black", "CUP_arifle_AK12_AFG_black"];
	_availableAttachments = ["rhs_acc_1p87"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "kat_chestSeal", "kat_larynx", "kat_stethoscope","kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "kat_AED"];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_RPK74M_railed"];
	_availableAttachments = ["rhs_acc_1p87"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_condition && _role in ["MMG"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_Pecheneg_top_rail_B50_vfg"];
	_availableAttachments = ["rhs_acc_1p87"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_PKP"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_GP34_black"];
	_availableAttachments = ["rhs_acc_1p87"];
	_availableMagazines = [];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117_VOG"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// HAT
if (_condition && _role in ["HAT"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_VG_black", "CUP_arifle_AK12_black", "CUP_arifle_AK12_AFG_black", "rhs_weap_rpg7"];
	_availableAttachments = ["rhs_acc_1p87", "rhs_acc_pgo7v3"];
	_availableMagazines = ["CUP_OG7_M", "rhs_rpg7_type69_airburst_mag", "rhs_rpg7_PG7VL_mag"];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = [];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Engineer and Explosive Specialist
if (_condition && _role in ["ENG"]) then {
	_unit setVariable ["ACE_IsEngineer", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AK12_VG_black", "CUP_arifle_AK12_black", "CUP_arifle_AK12_AFG_black"];
	_availableAttachments = ["rhs_acc_1p87"];
	_availableMagazines = ["rhssaf_mine_mrud_d_mag", "rhssaf_mine_tma4_mag", "rhssaf_tm500_mag", "rhssaf_mine_pma3_mag", "CUP_TimeBomb_M", "CUP_PipeBomb_M", ""];
	_availableVests = ["CUP_Vest_RUS_6B45_Sh117"];
	_availableItems = ["ACE_Clacker"];
	_availableGrenades = [];
	_availableBackpacks = ["CUP_O_RUS_Patrol_bag_Summer_Shovel"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Loadout array that's passed back to kosherArsenal */
[
    /* Loadoutfile version */
    "1.3",

    /* Allowed Equipment array */
    [
        (_availableBackpacks + _defBackpacks),
        (_availableVests + _defVests),
        (_availableUniforms + _defUniforms),
        (_availableFacewear + _defFacewear),
        (_defHeadgear + _availableHeadgear),
        (_defAttachments + _availableAttachments),
        (_availableMagazines + _defGrenades + _defMagazines + _availableGrenades),
        (_availableWeapons + _defWeapons),
        (_availableItems + _defItems)
    ]
];
