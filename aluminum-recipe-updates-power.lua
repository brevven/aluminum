local util = require("data-util");

-- most small electric poles handled in burner phase updates.

-- vanilla 
util.replace_ingredient("medium-electric-pole", "copper-plate", "acsr-cable")
util.replace_ingredient("big-electric-pole", "copper-plate", "acsr-cable")
util.replace_ingredient("substation", "copper-plate", "acsr-cable")
util.add_ingredient("substation", "aluminum-plate", 4)

-- aai or k2
if mods["aai-industry"] or mods.Krastorio2 then
  util.replace_ingredient("medium-electric-pole", "copper-cable", "acsr-cable")
  util.replace_ingredient("big-electric-pole", "copper-cable", "acsr-cable")
  util.replace_ingredient("substation", "copper-cable", "acsr-cable")
end

-- SE recycling
if mods["space-exploration"] then
  util.remove_product("se-recycle-small-iron-electric-pole", "copper-cable")
  util.remove_product("se-recycle-small-electric-pole", "copper-cable")
  util.remove_product("se-recycle-medium-electric-pole", "copper-cable")
  util.remove_product("se-recycle-big-electric-pole", "copper-cable")
  util.remove_product("se-recycle-substation", "copper-cable")

  util.add_product("se-recycle-small-iron-electric-pole", {"aluminum-cable", 1})
  util.add_product("se-recycle-small-electric-pole", {"aluminum-cable", 1})
  util.add_product("se-recycle-medium-electric-pole", {"acsr-cable", 1})
  util.add_product("se-recycle-big-electric-pole", {"acsr-cable", 2})
  util.add_product("se-recycle-substation", {"acsr-cable", 4})
end

-- final amounts apply to all mod loadouts
util.set_ingredient("medium-electric-pole", "acsr-cable", 1)
util.set_ingredient("big-electric-pole", "acsr-cable", 2)
util.set_ingredient("substation", "acsr-cable", 4)
