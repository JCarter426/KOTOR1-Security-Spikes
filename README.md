# Summary

|||
| -------- | ---------------------------------------|
| Title:   | JC's Security Spikes for K1            |
| Version: | 1.2.1                                  |
| Game:    | Star Wars: Knights of the Old Republic |
| Author:  | JCarter426                             |

Security spikes are disposable items that give the player a temporary boost to their Security skill when activated, helping them pick more difficult locks. At least, that's how it's supposed to be. That's how they work on the Xbox version and in KOTOR 2, but security spikes don't actually do anything at all on the PC version of KOTOR 1.

The cause seems to be some sort of bug in the GUI that prevents security spikes from ever appearing in their intended slot. So when interacting with a door, there isn't an option to scroll from the Security skill to security spikes, as there is in KOTOR 2. The GUI was changed for the port from Xbox to PC, and security spikes probably got left out due to oversight. I couldn't find any way to resolve the issue, though, so I came up with two alternative options.

## Usable Security Spikes

This option replicates the security spikes' intended function as best as I could manage. They’ve been given an Activate Item property and appear in the non-medical item slot along with stimulants along with stimulants and shields.

When a character activates a security spike, they receive a temporary boost to their Security skill and proceed to unlock the nearest door or container. Apart from the boost, the skill check for the lock is the same as usual: 1d20 + Security vs. the lock’s DC. Security spikes are single-use and discarded whether the character succeeds in picking the lock or not; however, they are not used up if the attempt was impossible—if there wasn’t anything in range or the lock required a special keycard, for example. Regular security spikes grant a +5 bonus and security spike tunnelers grant a +10 bonus.

## Remove Security Spikes

This option removes security spikes from the game, replacing them with credits. The value is equivalent to the most you could get from selling the original security spike items to a merchant. Mission’s ability to create security spikes on the Ebon Hawk is removed.


# Installation

You must start a new game to experience the full effects of this mod.

1. Extract files from the downloaded archive.
2. Run INSTALL.exe.
3. Select which option you want to install.
4. Click "Install Mod" and select your game directory.


# Uninstallation

During installation, TSLPatcher generates a backup folder and a log recording which files were affected.

1. Restore or delete all all module files affected by this mod. For each module, copy the corresponding .mod file from the backup folder to replace the one in your game's Modules folder if a backup was created, otherwise delete the .mod file from your game's Modules folder.
2. Restore or delete all all .2da files affected by this mod. For each, copy the corresponding .2da file from the backup folder to replace the one in your game's Override folder if a backup was created, otherwise delete the .2da file from your game's Override folder.
3. Delete all other files installed by this mod from your game's Override folder.


# Compatibility

Mods which install merchant files to Override may cause merchants to still sell security spikes for the option which removes security spikes.


# Credits

|||
| -------------- | ------------------------------- |
| KOTOR Tool     | Fred Tetra                      |
| TSLPatcher     | stoffe & Fair Strides           |
| DLGEditor      | tk102                           |
| K-GFF          | tk102                           |
| ERFEdit        | stoffe & Fair Strides           |
| NWNSSCOMP      | Torlack, stoffe, & tk102        |


# License

[![CC BY-NC 4.0][cc-by-nc-shield]][cc-by-nc]

This work is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License][cc-by-nc].

[![CC BY-NC 4.0][cc-by-nc-image]][cc-by-nc]

[cc-by-nc]: https://creativecommons.org/licenses/by-nc/4.0/
[cc-by-nc-image]: https://licensebuttons.net/l/by-nc/4.0/88x31.png
[cc-by-nc-shield]: https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg


# Donations

If you enjoy my mods and would like to show your support in a monetary manner, you may do so via PayPal at https://www.paypal.me/carterunited or using the button below.

[![](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/ncp/payment/HCYNEA8JVJD2Y)
