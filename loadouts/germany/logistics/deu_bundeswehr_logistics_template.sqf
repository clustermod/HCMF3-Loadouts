/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V5
 * CMF Logistics file with preset crates correct for the German military throughout all time zones and climates. Only needs BW mod.
 *
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */


[
    /* Fireteam Crate */
    ["Fireteam", {
        _available = 2;
        _class = "BWA3_Box_Ammo";
         _weapons = [];
        /* Change Values in between the qoutes to object classnames. */
        _magazines = [["<Main Weapon magazines>", 50], ["<Automatic Weapon Magazines>",10], ["<LAT Launchers>",2 ], ["<GPs for UGLs>",15], ["<Flares>",10]];
        /* Change Values in between the qoutes to object classnames. */
        _grenades = [["<Throwable grenades>", 15]];
        _items = [["ACE_fieldDressing", 12],  ["ACE_morphine", 12], ["ACE_canteen", 6]];
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
    
    ["Explosives", {
        _available = 0;
        _class = "BWA3_Box_Explosives";
        _weapons = [];
        /* Change Values in between the qoutes to object classnames. */
        _magazines = [["<Explosives<", 10]];
        _grenades = [];
        _items = [];
        _cargo = [];
    }],

    ["LAT", {
        _available = 0;
        _class = "BWA3_Box_Launchers";
        _weapons = [];
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }],

    ["Mortar", {
        _available = 0;
        _class = "BWA3_box_120mm_Mo_Combo";
        _weapons = [];
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }],

    ["Engineer", {
        _available = 0;
        _class = "BWA3_Box_Support";
        _weapons = [];
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }],
    
    ["Large", {
        _available = 0;
        _class = "BWA3_Box_Gear_Fleck";
        _weapons = [];
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }]
]