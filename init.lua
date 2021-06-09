--[[
 Whiter List mod by Jordan Irwin (AntumDeluge)
 License: MIT

 Original Whitelist mod by ShadowNinja
 License: WTFPL
--]]

local world_path = core.get_worldpath()
local admin = core.settings:get("name")
local whitelist = {}

-- Enabled by default
local enabled = core.settings:get_bool("whitelist.enable", true)
local deny_message = core.settings:get("whitelist.message") or "This server is whitelisted and you are not on the whitelist."

local function load_whitelist()
	local file, err = io.open(world_path .. "/whitelist.txt", "r")
	if err then return end

	for line in file:lines() do
		whitelist[line] = true
	end

	file:close()
end

local function save_whitelist()
	local file, err = io.open(world_path .. "/whitelist.txt", "w")
	if err then return end

	for item in pairs(whitelist) do
		file:write(item .. "\n")
	end

	file:close()
end

if enabled then
	core.register_on_prejoinplayer(function(name, ip)
		load_whitelist()
		if name == "singleplayer" or name == admin or whitelist[name] then
			return
		end

		return deny_message
	end)
end

core.register_chatcommand("whitelist", {
	params = "{add|remove} <nick>",
	help = "Manipulate the whitelist",
	privs = {ban=true},
	func = function(name, param)
		local action, whitename = param:match("^([^ ]+) ([^ ]+)$")
		if action == "add" then
			if whitelist[whitename] then
				return false, whitename .. " is already on the whitelist."
			end

			whitelist[whitename] = true
			save_whitelist()
			return true, "Added " .. whitename .. " to the whitelist."
		elseif action == "remove" then
			if not whitelist[whitename] then
				return false, whitename .. " is not on the whitelist."
			end

			whitelist[whitename] = nil
			save_whitelist()
			return true, "Removed " .. whitename .. " from the whitelist."
		else
			return false, "Invalid action."
		end
	end,
})
