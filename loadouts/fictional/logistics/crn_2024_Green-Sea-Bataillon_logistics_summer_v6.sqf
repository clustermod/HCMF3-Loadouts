/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: v5
 * Cluster Community modpack adjusted interpretaion of the "Green Sea Bataillon" seen in other mods dealing with the Chernorussia lore.
 * The Green Sea Bataillon mostly has eastern style gear but a western modernisation is seen throuout their equipment.
 * Inside the loadout is also a ID armband in the colors green and yellow. The enemy armband colors should be either white or red. 
 * 
 * https://github.com/clustermod/CMF3/blob/dev/framework/rsc/loadouts/!arsenal_template.sqf
 */

[
    /* Fireteam Crate */
    ["Fireteam", {
        _available = 2;
        _class = "CUP_BOX_US_ARMY_Ammo_F";
        _weapons = [];
        /* Change Values in between the qoutes to object classnames. */
        _magazines = [["rhs_30Rnd_545x39_7N10_plum_AK", 25], ["rhsgref_30rnd_556x45_vhs2", 25], ["rhsusf_200Rnd_556x45_box",10], ["rhs_weap_rpg75",2 ], ["rhs_VOG25P",15], ["rhs_VG40OP_green",10]];
        /* Change Values in between the qoutes to object classnames. */
        _grenades = [["BWA3_DM51A1", 15]];
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
        _available = 1;
        _class = "CUP_BOX_US_ARMY_AmmoOrd_F";
        _weapons = [];
        /* Change Values in between the qoutes to object classnames. */
        _magazines = [["rhsusf_m112x4_mag", 10]];
        _grenades = [];
        _items = [];
        _cargo = [];
    }]
]