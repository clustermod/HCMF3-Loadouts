/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V5 
 * [This logistics is made for the idf_2023_sayaret_rangergreen_v5.sqf loadout.]
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

[
    /* Fireteam Crate */
    ["Fireteam", {
        _available = 4;
        _class = "CUP_BOX_US_ARMY_Ammo_F";
        _weapons = [];
        _magazines = [["CUP_30Rnd_545x39_Fort224_M", 30], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30], ["150Rnd_762x54_Box", 5], ["150Rnd_762x54_Box_Tracer", 5], ["rhs_mag_M433_HEDP", 15]];
        _grenades = [["rhs_mag_m67", 12]];
        _items = [["ACE_fieldDressing", 12], ["ACE_morphine", 12], ["ACE_epinephrine", 12], ["ACE_Canteen", 6]];
        _cargo = [];	
    }],
    
    ["Medical", {
        _available = 2;
        _class = "ACE_medicalSupplyCrate_advanced";
        _weapons = [];
        _magazines = [];
        _grenades = [];
        _items = [["kat_IV_16", 10], ["kat_aatKit", 5], ["ACE_adenosine", 5], ["kat_amiodarone", 5], ["ACE_fieldDressing", 20], ["ACE_elasticBandage", 25], ["ACE_packingBandage", 30], ["ACE_quikclot", 15], ["kat_chestSeal", 10], ["ACE_epinephrine", 10], ["kat_IO_FAST", 5], ["kat_guedel", 5], ["kat_larynx", 10], ["kat_lidocaine", 5], ["ACE_morphine", 10], ["ACE_plasmaIV", 5], ["ACE_plasmaIV_500", 10], ["ACE_splint", 5], ["ACE_bodyBag", 10]];
        _cargo = [];
    }],

    ["LAT", {
        _available = 2;
        _class = "CUP_BOX_US_ARMY_AmmoOrd_F";
        _weapons = [["CUP_launch_M72A6", 20]];
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }],

    ["Map", {
        _available = 1;
        _class = "BWA3_box_120mm_Mo_Illum";
        _weapons = [["ItemMap", 20]];
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }]
]