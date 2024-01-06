params ["_role", "_unit"];

/* Custom additional condition */
private _condition = true;
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];

// Define default gear
private _defItems = ["ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = ["rhsusf_weap_m1911a1", "rhs_weap_m72a7"];
private _defAttachments = [];
private _defMagazines = ["rhsusf_mag_7x45acp_MHP", "rhsusf_200Rnd_556x45_box", "rhsusf_200rnd_556x45_mixed_box", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = [];
private _defUniforms = ["usm_bdu_w"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["usm_bdu_boonie_wdl", "rhsgref_helmet_pasgt_woodland"];
private _defFacewear = ["LEN_BCG"];

//
// Made for Arma 3 Virtual MILSIM by Per_von_Harke
//

// Rifleman
if (_condition && _role in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_M16A2"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["usm_vest_LBE_rm", "usm_vest_LBE_rmp"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["UNS_Alice_1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Team leader
if (_condition && _role in ["SL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_M16A2"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["usm_vest_LBE_rm", "usm_vest_LBE_rmp"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["UNS_Alice_1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Medic
if (_condition && _role in ["MED"]) then {
	_unit setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["UK3CB_M16A2"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["usm_vest_LBE_rm", "usm_vest_LBE_rmp"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "kat_chestSeal", "kat_larynx", "kat_stethoscope","kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16"];
	_availableGrenades = [];
	_availableBackpacks = ["UNS_Alice_1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// SAW/LMG
if (_condition && _role in ["AR"]) then {
	_availableUniforms = [];
	_availableWeapons = ["rhs_weap_m249"];
	_availableAttachments = ["rhsusf_acc_saw_bipod"];
	_availableMagazines = [];
	_availableVests = ["usm_vest_LBE_mg"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["UNS_Alice_1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// Grenadier
if (_condition && _role in ["GRD"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_M16A2_GL"];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["usm_vest_LBE_rm", "usm_vest_LBE_rmp"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["UNS_Alice_1"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

// RTO
if (_condition && _role in ["RTO"]) then {
	_availableUniforms = [];
	_availableWeapons = [];
	_availableAttachments = [];
	_availableMagazines = [];
	_availableVests = ["usm_vest_LBE_rm", "usm_vest_LBE_rmp"];
	_availableItems = ["ACRE_PRC77"];
	_availableGrenades = [];
	_availableBackpacks = ["UNS_ARMY_RTO"];
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