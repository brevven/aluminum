require("aluminum-recipe-final-stacking")
require("aluminum-recipe-modules")
-- require("aluminum-recipe-final-5d")
require("aluminum-recipe-final-rrr")

require("aluminum-burner-phase")


local util = require("data-util");

if mods["space-exploration"] then 
  -- Must be in final fixes
  util.replace_ingredient("rocket-control-unit", "iron-plate", "aluminum-plate")

  -- core mining balancing
  util.add_to_product("se-core-fragment-omni", "aluminum-ore", -2)
end

if mods.bzsilicon then
for i, entity in pairs(data.raw.furnace) do
  if entity.result_inventory_size ~= nil and entity.result_inventory_size < 2 and util.contains(entity.crafting_categories, "smelting") then
    entity.result_inventory_size = 2
  end
end
end


-- Must be last
util.create_list()
