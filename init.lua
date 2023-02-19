local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

dofile(modpath .. DIR_DELIM .. "items00")
dofile(modpath .. DIR_DELIM .. "items01")
dofile(modpath .. DIR_DELIM .. "items02")
dofile(modpath .. DIR_DELIM .. "items03")
dofile(modpath .. DIR_DELIM .. "items04")
dofile(modpath .. DIR_DELIM .. "items05")

dofile(modpath .. DIR_DELIM .. "crafts00")
dofile(modpath .. DIR_DELIM .. "crafts01")
dofile(modpath .. DIR_DELIM .. "crafts02")
dofile(modpath .. DIR_DELIM .. "crafts03")
dofile(modpath .. DIR_DELIM .. "crafts04")
dofile(modpath .. DIR_DELIM .. "crafts05")
dofile(modpath .. DIR_DELIM .. "crafts06")
dofile(modpath .. DIR_DELIM .. "crafts07")
dofile(modpath .. DIR_DELIM .. "crafts08")
dofile(modpath .. DIR_DELIM .. "crafts09")

minetest.register_chatcommand("simulate_crafting", {
	func = function(name)
		local start = os.clock()
		minetest.get_craft_result({
			method = "normal",
			width = 3,
			items = {
				"farming:seed_wheat 99", "farming:seed_wheat 99", "farming:seed_wheat 99",
				"farming:seed_wheat 99", "farming:seed_wheat 99", "farming:seed_wheat 99",
				"farming:seed_wheat 99", "farming:seed_wheat 99", "farming:seed_wheat 99",
			}
		})
		return true, string.format("get_craft_result: 9 wheat -> 1 mulch took %.04fs", os.clock() - start)
	end,
})
