## PvH's CMF Loadouts
This is a collection of loadouts made for [Cluster Community](https://cluster-community.com/) using the mission framework [CMF3](https://github.com/clustermod/CMF3).

The compatability with the current Cluster Community Modset is written inside each file in the information header:
```sqf
/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: Hark
 * CC Modpack Version: V3
 * [Description]
 *
 */
```

Though I tried to not miss any important items in any loadout it is recommended that you check it before using it in a mission. 
Or at least go through each slot you have and check if everyone gets a primary weapon so that they won't get softlocked in the arsenal. 
(The last issue has been resolved with newer versions of CMF. It is still advised to do so anyway.)

## How to install
You will need [CMF3](https://github.com/clustermod/CMF3) for this to work.                                                                           
Git clone the repository or download the zip (extract) to any folder.                                                         
Move the loadout you want into `yourmissionfolder\rsc\loadouts`.                                      
Then go into `initPlayerLocal.sqf` and change the filename `LOADOUTNAME HERE` inside 
```sqf
[["LOADOUTNAME HERE"], true, true] call cmf_kosherArsenal_fnc_init;
```
to whatever the name is of the loadout you want.

Example:
```sqf
[["GER_2015__PSA_BPO__SOLIDURBAN"]] call cmf_kosherArsenal_fnc_init;
```
You do not need to add the file extenstion (`.sqf`). 
