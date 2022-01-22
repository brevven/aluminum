-- require("aluminum-recipe-final-stacking")
require("aluminum-recipe-modules")
-- require("aluminum-recipe-final-5d")
require("aluminum-recipe-final-rrr")

require("aluminum-burner-phase")


local util = require("data-util");

if mods["space-exploration"] then 
  -- Organization
  data.raw.item["aluminum-plate"].subgroup = "plates"
  data.raw.recipe["aluminum-plate"].subgroup = "plates"

  -- core mining balancing
  util.add_to_product("se-core-fragment-omni", "aluminum-ore", -3)
end


-- Must be last
util.create_list()
