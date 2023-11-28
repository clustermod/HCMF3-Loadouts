/* Get the unit's role */
private _condition = player getVariable ["cmf_organization_role", "RFL"];
private ["_availableUniforms", "_availableWeapons", "_availableMagazines", "_availableVests", "_availableItems", "_availableBackpacks", "_availableHeadgear", "_availableFacewear", "_availableAttachments", "_availableGrenades"];


// Loadout file made by Per_von_Harke


/* Default gear */
private _defItems = ["ACRE_SEM52SL", "ItemAndroid", "ACE_CableTie", "ACE_IR_Strobe_Item", "ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed", "ACE_wirecutter", "ItemcTabHCam", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36"
, "tgc_pvs23_bungee", "tgc_pvs23_band", "ACE_Canteen", "ACE_EarPlugs", "kat_guedel", "ACE_adenosine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_epinephrine", "ACE_Flashlight_MX991", "ACE_MapTools", "ACE_morphine", "ACE_splint", "ACE_tourniquet", "ItemMap", "ItemCompass", "ItemWatch", "ACE_CableTie"];
private _defWeapons = [];
private _defAttachments = [];
private _defMagazines = ["CUP_30Rnd_556x45_G36", "BWA3_120Rnd_762x51_Tracer_soft", "BWA3_120Rnd_762x51_soft", "BWA3_1Rnd_Flare_Singlestar_Red", "BWA3_1Rnd_Flare_Singlestar_White", "BWA3_1Rnd_Flare_Illum", "BWA3_1Rnd_Flare_Singlestar_Green", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_M441_HE", "rhs_mag_M585_white", "rhs_mag_m661_green", "rhs_mag_m662_red", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow"];
private _defGrenades = ["BWA3_DM51A1", "BWA3_DM32_Yellow", "BWA3_DM32_Red", "BWA3_DM32_Purple", "BWA3_DM32_Orange", "BWA3_DM32_Green", "BWA3_DM32_Blue", "BWA3_DM25", "Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow", "ACE_Chemlight_Orange", "ACE_M84", "rhs_mag_an_m14_th3", "ACE_Chemlight_IR"
];
private _defUniforms = ["CUP_U_B_GER_Flecktarn_2"];
private _defVests = [];
private _defBackpacks = [];
private _defHeadgear = ["rhsusf_ach_bare_headset", "rhsusf_ach_bare_wood_headset"];
private _defFacewear = ["CUP_G_RUS_Balaclava_Ratnik", "rhs_googles_clear", "CUP_G_ESS_BLK", "CUP_G_ESS_RGR"];

/* Rifleman */
if (_condition in ["RFL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableAttachments = ["cup_optic_g36optics_holo_3d", "bwa3_acc_llm01_irlaser"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Squad Leader and Fireteam Leader */
if (_condition in ["SL", "FTL"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A", "BWA3_Vector", "BWA3_P2A1"];
	_availableAttachments = ["cup_optic_g36optics_holo_3d", "bwa3_acc_llm01_irlaser"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr"];
	_availableItems = ["ACRE_SEM70"];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Medic */
if (_condition in ["MED"]) then {
	player setVariable ["ace_medical_medicclass", 2, true];
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A"];
	_availableAttachments = ["cup_optic_g36optics_holo_3d", "bwa3_acc_llm01_irlaser"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_medicalbelt_rngr"];
	_availableItems = ["ACE_personalAidKit", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_surgicalKit", "kat_chestSeal", "kat_larynx", "kat_stethoscope", "kat_amiodarone", "kat_lidocaine", "kat_IO_FAST", "kat_IV_16", "KAT_Empty_bloodIV_500", "KAT_Empty_bloodIV_250", "kat_AED", "kat_aatKit"];
	_availableGrenades = [];
	_availableBackpacks = ["M9_Backpack"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Autorifleman */
if (_condition in ["AR"]) then {
	_availableUniforms = [];
	_availableWeapons = ["BWA3_MG5_tan"];
	_availableAttachments = ["bwa3_optic_zo4x30i_sand_pip"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Anti-Tank */
if (_condition in ["LAT"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_G36A", "CUP_launch_BF3"];
	_availableAttachments = [];
	_availableMagazines = ["CUP_PTF3IT_M", "CUP_PTFHC_M", "CUP_PTFHE_M"];
	_availableVests = ["CUP_V_JPC_communicationsbelt_rngr"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Grenadier */
if (_condition in ["GRD"]) then {
	_availableUniforms = [];
	_availableWeapons = ["CUP_arifle_AG36"];
	_availableAttachments = ["cup_optic_g36dualoptics_3d", "bwa3_acc_llm01_irlaser"];
	_availableMagazines = [];
	_availableVests = ["CUP_V_JPC_weaponsbelt_rngr"];
	_availableItems = [];
	_availableGrenades = [];
	_availableBackpacks = ["BWA3_AssaultPack_Fleck"];
	_availableHeadgear = [];
	_availableFacewear = [];
};

/* Loadout array that's passed back to kosherArsenal */
[
	/* Loadoutfile version */
	"1.2",

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
