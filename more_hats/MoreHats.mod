local directory_name = "more_hats"
local file_name = "MoreHats"

local main_script_path = "scripts/mods/"..directory_name.."/"..file_name

print("'"..file_name.."' Mod loading...")

local ret = {
	run = function()
		local mod = new_mod(file_name)
		mod:localization("localization/"..file_name)
		mod:initialize(main_script_path)
	end,
	packages = {
		"resource_packages/"..directory_name.."/"..file_name
	},
}
return ret