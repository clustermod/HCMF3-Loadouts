/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V5
 * [Loadout depicting the 2023 state of German Paratroopers, with limitations in realism due to available mods for Arma 3.]
 *
 */

params["_unit"];

/* Get the group type */
private _condition = (group _unit) getVariable ["cmf_common_group_type", "INF"];
private _availableVehicles = []; private _availablePylons = []; private _availableCamos = []; private _availableComponents = [];

/* If true will only show pylons compatible with the selected vehicle, if false will show all available pylons */
private _compPylons = true;

/* Default Vehicles */
private _defVehicles = []; // "ALL" for all vehicles
private _defPylons = []; //  "ALL" for all pylons
private _defCamos = []; //  "ALL" for all camos
private _defComponents = []; //  "ALL" for all components

/* SIERRA (APC) */
if (_condition in ["SIERRA", "ARMOR"]) then {
    _availableVehicles = ["BWA3_Eagle_Fleck", "BWA3_Eagle_FLW100_Fleck", "UK3CB_B_M1030_NATO", "B_Quadbike_01_F"];
    _availablePylons = [];
    _availableCamos = ["Fleck", "Green"];
    _availableComponents = [];
};

/* MORTARS (Mortar squad) */
if (_condition in ["MORTARS", "SUPPORT"]) then {
    _availableVehicles = ["BWA3_MRS120_Fleck"];
    _availablePylons = [];
    _availableCamos = [];
    _availableComponents = [];
};

/* Loadout array that's passed back to kosherGarage */
[
    /* Loadoutfile version */
    "1.0",

    /* Loadout data */
    (_defVehicles + _availableVehicles),
    (_compPylons),
    (_defPylons + _availablePylons),
    (_defCamos + _availableCamos),
    (_defComponents + _availableComponents)
];
