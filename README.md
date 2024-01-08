<p align="center">
    <img src="https://raw.githubusercontent.com/clustermod/HCMF3-Loadouts/master/extras/assets/logo/black/cmf3_logo_trans.png" width="480">
</p>

<p align="center">
    <a href="https://github.com/Tapawingo/HCMF3-Loadouts/releases">
        <img src="https://img.shields.io/github/v/release/clustermod/HCMF3-Loadouts?style=flat-square" alt="Releases">
    </a>
    <a>
        <img src="https://img.shields.io/github/repo-size/clustermod/HCMF3-Loadouts?style=flat-square" alt="repo Size">
    </a>
    <a href="https://github.com/clustermod/HCMF3-Loadouts/issues" alt="Issue Tracker">
        <img src="https://img.shields.io/github/issues-raw/clustermod/HCMF3-Loadouts?style=flat-square">
    </a>
    <a href="https://github.com/clustermod/HCMF3-Loadouts/blob/master/LICENSE">
        <img src="https://img.shields.io/github/license/clustermod/HCMF3-Loadouts?style=flat-square" alt="License">
    </a>
    <a href="https://discord.gg/MBP64PWz">
        <img src="https://img.shields.io/badge/Discord-Join-darkviolet.svg?style=flat-square" alt="Cluster Discord"">
    </a>
</p>

<p align="center">
    <sup><strong>Click to see list of loadouts<br/>
    <a href="https://github.com/clustermod/Harks-CMF3-Loadouts/blob/standardizationExample/loadouts/README.md">
        <img src="https://img.shields.io/badge/Loadout_List-orange?style=flat-square" alt="Cluster Discord"">
    </a></strong></sup>
</p>

Hark's Cluster Mission Framework Loadouts (HCMF3-Loadouts) is a collection of loadouts made for [Cluster Community](https://cluster-community.com/) using the mission framework [CMF3](https://github.com/clustermod/CMF3).

The compatibility with the current Cluster Community Modset is written inside each file in the information header.
```sqf
/*
 * Made for Arma 3 Virtual MILSIM
 *
 * Author: [author]
 * CC Modpack Version: [version]
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
"Mission Ready Sets" are complete CMF usable presets for the logistics system, [Kosher Garage](https://wiki.cluster-community.com/index.php?title=Category:CMF3:_kosherGarage) and [Kosher Arsenal](https://wiki.cluster-community.com/index.php?title=Category:CMF3:_kosherArsenal).
These files have increased priority for Cluster Community mod list updates and are checked to work correctly after each update. 
The goal of these presets is to make implementing certain units into missions as easy as possible. They can be found in the [FULL MISSION SETS](https://github.com/PervonHarke/Harks-CMF3-Loadouts/tree/master/Full%20Mission%20Sets) folder.

## AI Presets
"AI Presets" are loadouts made for the CMF function [Kosher AI](https://wiki.cluster-community.com/index.php?title=cmf_kosherArsenal_fnc_kosherAI).

## Contributing
You can help out with the ongoing development by looking for potential bugs in the framework, or by contributing new features. We are always welcoming new pull requests containing bug fixes, refactors and new features.

### Contribution guidelines
To contribute something to **HCMF3 Loadouts**, simply fork this repository and submit your pull requests for review by other collaborators.

### Submitting issues and requesting features
Please use our [Issue Tracker](https://github.com/Tapawingoclustermod/HCMF3-Loadouts/issues) to report a bug, propose a feature, or suggest changes to the existing ones.

### Get in touch
<table>
  <tr>
    <td><a href="https://discord.com/invite/6Sq6hDgbGF">Discord</a></td>
    <td>We have a public Discord server that anyone can join. This is where all of Cluster Community resides aswell as our developers</td>
  </tr>
</table>

## License
**HCMF3 Loadouts** is licensed under the GNU General Public License ([GPLv3](https://github.com/clustermod/HCMF3-Loadouts/blob/master/LICENSE)).
