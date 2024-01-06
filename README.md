## Hark's CMF3 Loadouts
This is a collection of loadouts made for [Cluster Community](https://cluster-community.com/) using the mission framework [CMF3](https://github.com/clustermod/CMF3).

The compatibility with the current Cluster Community Modset is written inside each file in the information header and or indicated with a "V" and a number in the file name.
```sqf
/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: <NameOfAuthor>
 * CC Modpack Version: V5
 * [Description]
 *
 */
```

Though I tried to not miss any important items in any loadout it is recommended that you check it before using it in a mission. 
Or at least go through each slot you have and check if everyone gets a primary weapon so that they won't get soft-locked in the arsenal. 
(The last issue has been resolved with newer versions of CMF. It is still advised to do so anyway.)

## How to install
You will need [CMF3](https://github.com/clustermod/CMF3) for this to work.                                                                           
Git clone the repository or download the zip (extract) to any folder.                                                         
Move the loadout you want into `yourmissionfolder\rsc\loadouts`.                                      
Then go into `initPlayerLocal.sqf` and change the filename `LOADOUTNAME HERE` inside 
```sqf
[["LOADOUTNAME_HERE"], true, true] call cmf_kosherArsenal_fnc_init;
```
to whatever the name is of the loadout you want.

Example:
```sqf
[["GER_2015__PSA_BPO__SOLIDURBAN"]] call cmf_kosherArsenal_fnc_init;
```
You do not need to add the file extension (`.sqf`). 

## FULL MISSION SETS
"Mission Ready Sets" are complete CMF usable presets for the logistics system, [koscherGarage](https://wiki.cluster-community.com/index.php?title=Category:CMF3:_kosherGarage) and [koscherArsenal](https://wiki.cluster-community.com/index.php?title=Category:CMF3:_kosherArsenal).
These files have increased priority for Cluster Community mod list updates and are checked to work correctly after each update. 
The goal of these presets is to make implementing certain units into missions as easy as possible. They can be found in the [FULL MISSION SETS](https://github.com/PervonHarke/Harks-CMF3-Loadouts/tree/master/Full%20Mission%20Sets) folder.

## AI Presets
"AI Presets" are loadouts made for the CMF function [cmf_koscherArsenal_fnc_kosherAI](https://wiki.cluster-community.com/index.php?title=cmf_kosherArsenal_fnc_kosherAI). 
