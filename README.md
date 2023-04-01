## PvH's EMF Loadouts
This is a collection of loadouts made by me, Per von Harke , for Erik's Mission Framework (EMF).                                                        
Link to [Erik's Mission Framework](https://github.com/clustermod/CMF3) 

The needed mods may change from loadout to loadout.
[A link to the modlist used while creating these](https://cluster-community.com/).                      
All kits are made to fit the [Cluster Community](https://discord.gg/JggdMFz) modpack.
Please note that the kits may not be compatable with the newest version of the CC modpack. 

Though I tried to not miss any important items in any loadout it is recommended that you check it before using it in a mission. 
Or at least go through each slot you have and check if everyone gets a primary weapon so that they won't get softlocked in the arsenal. 
(The last issue has been resolved with newer versions of CMF. It is still advised to do so anyway.)

## How to install
You will need [CMF](https://github.com/clustermod/CMF3) for this to work.                                                                           
Git clone the repository or download the zip (extract) to any folder.                                                         
Move the loadout you want into `yourmissionfolder\rsc\loadouts`.                                      
Then go into `initPlayerLocal.sqf` and change the filename `LOADOUTNAME HERE` inside 
```sqf
[["LOADOUTNAME HERE"], true, true] call cmf_kosherArsenal_fnc_init;
```
to whatever the name is of the loadout you want.

Example:
```sqf
[["GER_2015__PSA_BPO__SOLIDURBAN.sqf "]] call cmf_kosherArsenal_fnc_init;
```
You do not need to add the file extenstion (`.sqf`). 
[To apply these loadouts to players upon spawn reference this article.](https://wiki.cluster-community.com/index.php?title=cmf_common_fnc_setRole)
**I would also recommend deleting all unneeded kits inside the loadouts folder to improve performance/loading time**

***
If you use Atom to edit sqf files you can use lintersqf to check the syntax. If you don't want to have warnings displayed copy in this code:
```sqf
private["_availableUniforms","_availableItems", "_availableFacewear", "_availableVests", "_availableWeapons", "_availableHeadgear", "_availableBackpacks", "_availableMagazines", "_defFacewear", "_defItems", "_defVests", "_defWeapons", "_defGrenades", "_defHeadgear", "_defUniforms", "_defBackpacks", "_defMagazines", "_magazines", "_weapons", "_backpacks", "_items"];
```
infront of `params["_role", "_obj", "_rearmOnly"];` at the top of the .sqf file.
Big thanks to Eric who showed me this. 
