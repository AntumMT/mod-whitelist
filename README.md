## Whiter List (*whitelist*) mod for Minetest

### Description:

A [Minetest][] mod that adds a simple player whitelist. Any player names not found in the whitelist are denied access to the server.

Forked from ShadowNinja's original [White List][].

![icon](icon.png)

### Usage:

Whitelist can be updated by editing *whitelist.txt* in the world directory or by issuing the following in-game commands. The *ban* privilege is required for issuing chat commands.

Commands:
- ***/whitelist add <name>***
	- Adds a username to whitelist & allows access to server.
- ***/whitelist remove <name>***
	- Removes a username from whitelist & denies access to server.

Settings:
- ***whitelist.enable***
	- Enables/Disables denying access to users not on the whitelist.
	- Enabled by default.
- ***whitelist.message***
	- Changes the default message *"This server is whitelisted and you are not on the whitelist."*

### Licensing:

- Code: [MIT](LICENSE.txt)

### Requirements:

- Minimum Minetest version: 0.4.16
- Depends: none
- Optional depends: none

### Links:

- [![ContentDB](https://content.minetest.net/packages/AntumDeluge/whitelist/shields/title/)](https://content.minetest.net/packages/AntumDeluge/whitelist/)
- [Forum](https://forum.minetest.net/viewtopic.php?t=18325)
- [TODO](TODO.txt)


[Minetest]: http://www.minetest.net/
[White List]: https://forum.minetest.net/viewtopic.php?t=8434
