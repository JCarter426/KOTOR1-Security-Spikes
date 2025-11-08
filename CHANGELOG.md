# Changelog

## [1.2.2 - 2025-11-08]

### Fixed

- Correct a bug with the option which removes security spikes that was interfering with the purchase of other items from stores.

## [1.2.1 - 2025-09-22

### Changed

- Adjust installer for the option which removes security spikes to make its changes to merchants patch modules instead of installing to Override for better compatibility with other mods.
- Clean up installer for the option which removes security spikes to omit an unnecessary script.
- Adjust installer for the option which makes security spikes usable to prevent it from adding redundant rows to spells.2da if run repeatedly or added by another mod.

## [1.2.0] - 2019-05-11

### Fixed

- Adjust the option which makes security spikes usable to prevent security spikes from opening doors the player isn't meant to be able to open. Thanks to ebmar for spotting one on Manaan.

## [1.1.0] - 2019-03-07

### Fixed

- Include missing spells.2da file required for TSLPatcher for the option which makes security spikes usable.

### Added

- Edit merchant files to prevent them from selling security spikes for the option which removes security spikes.

## [1.0.0] - 2019-02-01

### Added

- Give security spikes an activate item property which grants a temporary bonus to the Security skill and makes the character try to unlock the nearest door or container. 
- Provide alternative option to remove security spikes from the game, replace them with credits.