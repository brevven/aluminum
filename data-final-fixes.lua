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

-- vtk deep core mining balance
util.add_to_product("vtk-deepcore-mining-ore-chunk-refining-aluminum-ore-focus", "vtk-deepcore-mining-aluminum-ore-chunk", 20)
util.add_to_product("vtk-deepcore-mining-ore-chunk-refining", "vtk-deepcore-mining-aluminum-ore-chunk", 10)
util.add_to_product("vtk-deepcore-mining-ore-chunk-refining-no-uranium", "vtk-deepcore-mining-aluminum-ore-chunk", 10)
util.set_vtk_dcm_ingredients()

if mods.bzsilicon then
for i, entity in pairs(data.raw.furnace) do
  if entity.result_inventory_size ~= nil and entity.result_inventory_size < 2 and util.contains(entity.crafting_categories, "smelting") then
    entity.result_inventory_size = 2
  end
end
end

if mods.bztitanium then
  util.add_ingredient("w93-modular-gun-plaser", "ti-sapphire", 1)
  util.add_ingredient("w93-modular-gun-tlaser", "ti-sapphire", 1)
  util.add_ingredient("w93-modular-gun-beam", "ti-sapphire", 1)
else
  util.add_ingredient("w93-modular-gun-plaser", "alumina", 5)
  util.add_ingredient("w93-modular-gun-tlaser", "alumina", 5)
  util.add_ingredient("w93-modular-gun-beam", "alumina", 5)
end

-- Must be last
util.create_list()
