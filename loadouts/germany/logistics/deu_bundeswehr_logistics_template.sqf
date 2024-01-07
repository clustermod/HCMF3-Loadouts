/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V5
 * This file will give correct and working logistics crate for the following loadCuratorSelectionPreset
 * - deu_2023_fallschirmjäger_flecktarn.sqf
 * - deu_2023_fallschirmjäger_tropentarn.sqf
 * - deu_2023_pzgren_flecktarn.sqf
 * - deu_2023_pzgren_tropentarn.sqf
 * 
 */


[
    /* Fireteam Crate */
    ["Fireteam", {
        _available = 2;
        _class = "BWA3_Box_Ammo";
        _weapons = [];
        _magazines = [];
        _grenades = [];
        _items = [];
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
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }],
    
    //MG4 
    ["MMG", {
        _available = 0;
        _class = "BWA3_Box_Ammo";
        _weapons = [];
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }],
    
    //MG5
    ["HMG", {
        _available = 0;
        _class = "BWA3_box_120mm_Mo_Illum";
        _weapons = [];
        _magazines = [];
        _grenades = [];
        _items = [];
        _cargo = [];
    }],
    
    ["MAT", {
        _available = 0;
        _class = "BWA3_Box_Launchers";
        _weapons = [["BWA3_PzF3_Tandem_Loaded", 6]];
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