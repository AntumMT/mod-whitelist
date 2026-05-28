## Whiter List (*whitelist*) mod for Luanti

### Description:

A [Luanti] mod that adds a simple player whitelist. Any player names not found in the whitelist are denied access to the server.

Forked from ShadowNinja's original [White List][].

![icon](screenshot.png)

### Usage:

Whitelist can be updated by editing *whitelist.txt* in the world directory or by issuing the following in-game commands. The *ban* privilege is required for issuing chat commands.

Commands:
- ***/whitelist [&lt;command&gt; &lt;name&gt;]***
	- Manages the whitelist.
	- Without parameters: displays all whitelisted names
	- commands:
		- *query:* checks if a name is whitelisted
		- *add:* adds a name to whitelist
		- *remove:* removes a names from whitelist
	- *name:* name of player

Settings:
- ***whitelist.enable***
	- Enables/Disables denying access to users not on the whitelist.
	- Enabled by default.
- ***whitelist.message***
	- Changes the default message *"Server access is restricted to whitelisted players only."*

The *whitelist.txt* file is reloaded whenever a player attempts to log on. So it can be edited without the need to restart the server.

### Licensing:

- Code: [MIT](LICENSE.txt)

### Requirements:

- Minimum Luanti version: 5.0.0
- Depends: none
- Optional depends: none

### Links:

- [![ContentDB](https://content.luanti.org/packages/AntumDeluge/whitelist/shields/title/)](https://content.luanti.org/packages/AntumDeluge/whitelist/)
- [Forum](https://forum.luanti.org/viewtopic.php?t=18325)
- Git repos:
    - [Codeberg](https://codeberg.org/AntumLuanti/mod-whitelist)
    - [GitHub](https://github.com/AntumMT/mod-whitelist)
    - [GitLab](https://gitlab.com/AntumMT/mod-whitelist)
- [Changelog](changelog.txt)
- [TODO](TODO.txt)


[Luanti]: https://www.luanti.org/
[White List]: https://forum.luanti.org/viewtopic.php?t=8434
