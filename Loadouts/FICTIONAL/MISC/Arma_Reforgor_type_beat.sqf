params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhsusf_weap_m1911a1"];
private _defAttachments = [];
private _defMagazines = ["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M", "Tier1_250Rnd_762x51_Belt_M80", "Tier1_100Rnd_762x51_Belt_M80", "rhsusf_mag_7x45acp_MHP", "CUP_30Rnd_556x45_Stanag", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box"];
private _defGrenades = ["CUP_HandGrenade_M67", "rhs_mag_an_m8hc", "rhs_mag_an_m14_th3", "ALiVE_Handgrenade_stone"];
private _defUniforms = ["U_simc_bdu_veldjas_m81_gas"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["H_Simc_pasgt_m81_scrim_alt", "H_Simc_pasgt_m81_scrim_panama", "H_Simc_pasgt_m81_scrim_SWDG", "H_Simc_pasgt_m81_scrim", "H_Simc_pasgt_m81_b"];
private _defFacewear = ["G_SWDG", "G_LEN_BCG", "G_Nomex_1_lang_cut", "G_Nomex_1_fold_cut", "G_Nomex_1_cut", "G_Nomex_1_fold", "G_Nomex_1_lang", "G_Nomex_1"];

//
// Made for Arma 3 Virtual MILSIM
//
// Made by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "rhs_weap_m72a7"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["V_Simc_Alice_lc2", "V_Simc_Alice_lc2_alt", "V_Simc_Alice_mc_lc2"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_US_asspack_roll", "B_simc_US_asspack", "B_simc_US_asspack_56_roll", "B_simc_US_asspack_56_botol"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader
if (_condition && _role in ["SL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2", "rhs_weap_m72a7"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["V_Simc_Alice_lc2", "V_Simc_Alice_lc2_alt", "V_Simc_Alice_mc_lc2"];
	_availableItems = ["ACRE_PRC77"];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_rajio_1", "B_simc_rajio_4", "B_simc_rajio_2_a"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_condition && _role in ["MED"]) then {
	_unit setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["V_Simc_Alice_lc2", "V_Simc_Alice_lc2_alt", "V_Simc_Alice_mc_lc2"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "kat_chestSeal", "kat_larynx", "kat_stethoscope","kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16"];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_pack_alice_frame_2"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["V_Simc_Alice_249"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_rajio_1", "B_simc_rajio_4", "B_simc_rajio_2_a"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// MMG
if (_condition && _role in ["MMG"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_lmg_M60"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["V_Simc_Alice_249"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_rajio_1", "B_simc_rajio_4", "B_simc_rajio_2_a"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2_GL"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["V_Simc_Alice_lc2", "V_Simc_Alice_lc2_alt", "V_Simc_Alice_mc_lc2"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["B_simc_rajio_1", "B_simc_rajio_4", "B_simc_rajio_2_a"];
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