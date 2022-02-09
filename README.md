## PvH's EMF Loadouts
This is a collection of loadouts made by me, Per von Harke , for Erik's Mission Framework (EMF).                                                        
Link to [Erik's Mission Framework](https://github.com/Tapawingo/Eric-s-Mission-Framework) 

The needed mods may change from loadout to loadout.
[A link to the modlist used while creating these](https://cluster-community.com/downloads/cc_core_aio.html).                      
All kits are made to fit the [Cluster Community](https://discord.gg/JggdMFz) modpack.

Though I tried to not miss any important items in any loadout it is recommended that you check it before using it in a mission. 
Or at least go through each slot you have and check if everyone gets a primary weapon so that they won't get softlocked in the arsenal. 

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

**I would also recommend deleting all unneeded kits to improve performance/loading time**

***
If you use Atom to edit sqf files you can use lintersqf to check the syntax. If you don't want to have warnings displayed copy in this code:
```sqf
private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
```
infront of `params["_role", "_obj", "_rearmOnly"];` at the top of the .sqf file.
Big thanks to Eric who showed me this. 
