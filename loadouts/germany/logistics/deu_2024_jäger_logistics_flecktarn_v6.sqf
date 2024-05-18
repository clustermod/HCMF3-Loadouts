/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V5
 * Logistic file for https://github.com/clustermod/HCMF3-Loadouts/blob/addloadouts/loadouts/germany/loadouts/deu_2024_jäger_flecktarn_v5.sqf
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */


[
    /* Fireteam Crate */
    ["Fireteam", {
        _available = 2;
        _class = "BWA3_Box_Ammo";
        _weapons = [];
        _magazines = [["BWA3_30Rnd_556x45_G36_Tracer", 50], ["BWA3_120Rnd_762x51_Tracer",10], ["BWA3_PzF3_Tandem_Loaded",2 ], ["rhs_mag_M433_HEDP",15], ["BWA3_1Rnd_Flare_Illum",10]];
        _grenades = [["BWA3_DM51A1", 15]];
        _items = [["ACE_fieldDressing", 12],  ["ACE_morphine", 12], ["ACE_canteen", 6]];
        _cargo = [];
    }],
    
	/* Medical Crate */
    ["Medical", {
        _available = 2;
        _class = "ACE_medicalSupplyCrate_advanced";
        _weapons = [];
        _magazines = [];
        _grenades = [];
        _items = [["kat_IV_16", 10], ["kat_aatKit", 5], ["ACE_adenosine", 5], ["kat_amiodarone", 5], ["ACE_fieldDressing", 20], ["ACE_elasticBandage", 25], ["ACE_packingBandage", 30], ["ACE_quikclot", 15], ["kat_chestSeal", 10], ["ACE_epinephrine", 10], ["kat_IO_FAST", 5], ["kat_guedel", 5], ["kat_larynx", 10], ["kat_lidocaine", 5], ["ACE_morphine", 10], ["ACE_plasmaIV", 5], ["ACE_plasmaIV_500", 10], ["ACE_splint", 5], ["ACE_bodyBag", 10]];
        _cargo = [];
    }],
    
	/* Light Anti-Tank Crate */
    ["LAT", {
        _available = 0;
        _class = "BWA3_Box_Launchers";
        _weapons = [["BWA3_PzF3_Tandem_Loaded",5]];
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }]
]