/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V6
 * Logistics Template made for deu_2023_pzgren_flecktarn_full_mission_set.
 *
 */
params["_unit"];

/* Get the group type */
private _condition = (group _unit) getVariable ["cmf_common_group_type", "INF"];
private _availableVehicles = []; private _availablePylons = []; private _availableCamos = []; private _availableComponents = [];

/* If true will only show pylons compatible with the selected vehicle, if false will show all available pylons */
private _compPylons = true;

/* Default Vehicles  */
private _defVehicles = []; // "ALL" for all vehicles
private _defPylons = []; //  "ALL" for all pylons
private _defCamos = []; //  "ALL" for all camos
private _defComponents = []; //  "ALL" for all components

/* SIERRA (APC) */
if (_condition in ["SIERRA", "ARMOR"]) then {
    _availableVehicles = ["BWA3_Dingo2_FLW200_M2_Fleck"];
    _availablePylons = [];
    _availableCamos = ["Fleck"];
    _availableComponents = [];
};

/* MIKE (IFV) */
if (_condition in ["MIKE", "ARMOR"]) then {
    _availableVehicles = ["BWA3_Puma_Fleck"];
    _availablePylons = [];
    _availableCamos = ["Fleck"];
    _availableComponents = [];
};

/* TANGO (MBT) */
if (_condition in ["TANGO", "ARMOR"]) then {
    _availableVehicles = ["BWA3_Leopard2_Fleck"];
    _availablePylons = [];
    _availableCamos = ["Fleck"];
    _availableComponents = [];
};

/* PHANTOM (CAS/TRANS) */
if (_condition in ["PHANTOM", "TRANS"]) then {
    _availableVehicles = [];
    _availablePylons = [];
    _availableCamos = [];
    _availableComponents = [];
};

/* REAPER (CAS) */
if (_condition in ["REAPER", "CAS"]) then {
    _availableVehicles = ["BWA3_Tiger"];
    _availablePylons = ["PylonLeft1", "PylonLef2", "PylonRight1", "PylonRight2"];
    _availableCamos = [];
    _availableComponents = [];
};

/* LOGISTICS (Logistics squad) */
if (_condition in ["LOGI"]) then {
    _availableVehicles = ["BWA3_Multi_Fleck"];
    _availablePylons = [];
    _availableCamos = ["Fleck"];
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
