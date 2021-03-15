## PvH's EMF Loadouts
This is a collection of loadouts made by me, Per von Harke , for Erik's Mission Framework (EMF).                                                        
Link to [Erik's Mission Framework](https://github.com/Tapawingo/Eric-s-Mission-Framework) 

The needed mods may change from loadout to loadout and will be listed in [the wiki](https://github.com/PervonHarke/EMF_Kits/wiki).                                   
Since the loadouts where made for [Cluster Community](https://discord.gg/JggdMFz) their modpack will have all mods. 

All available loadouts with explanation and sources can be found in [the wiki](https://github.com/PervonHarke/EMF_Kits/wiki).

## How to install
You will need EMF for this to work.                                                                           
Git clone the repository or download the zip (extract) to any folder.                                                         
Move the loadout you want into `yourmissionfolder\rsc\loadouts`.                                      
Then go into `initPlayerLocal.sqf` and change the filename `USA_EARLY90_RANGER_DESERT` inside 
```sqf
[["USA_EARLY90_RANGER_DESERT"]] call EMF_fnc_kosherArsenalLoad;
```
to whatever the name is of the loadout you want.

Example:
```sqf
[["GER_2015__PSA_BPO__SOLIDURBAN.sqf "]] call EMF_fnc_kosherArsenalLoad;
```
You do not need to add the file extenstion (`.sqf`). 

**I would also heavily recommend deleting all unneeded kits to performance/loading time**
