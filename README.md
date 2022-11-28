# Don's qb-weapons
Weapon Logic Script For QB-Core

# Credits
- [QBCore Framework](https://github.com/qbcore-framework) For the orginal qb-weapons.
- [BrianxTu](https://github.com/BrianxTu/qb-weapons) For their fork of qb-weapons with qb-target and table type.
- [Official-X3R0](https://github.com/Official-X3R0/qb-weapons) For their fork of qb-weapons with damage configuration.

# Updates:

    # DonHulieo
    - Weapon Jamming, Base Configured for 0.1% chance of Jamming per Bullet Fired.
    - Attachments now get damaged when weapon is shot.
    - Quality is constant, great for inventory systems with decay.
    - Weapons will stop working until the broken attachment is removed.
    
    # BrianxTU
    - QB-Target interaction setup by vector4.
    - Individual table pricing, time and "ownership" timeout. Finders Keepers am I right?
    - Table types i.e. public, private, job, gang.
    - Table timeout is still restricted to the table type. If you don't want to use it, I added an option to put "false" into the field.
    
    # Official-X3R0
    - Weapon Damages can be configured, and "one-shot" headshots disabled or enabled.

# Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/qbcore-framework/qb-target)

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>
