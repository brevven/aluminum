require("aluminum-recipe-updates")
require("aluminum-matter")
-- require("omni")
require("map-gen-preset-updates")
require("strange-matter")

local util = require("data-util");

if data.raw.resource["copper-ore"] then
  if mods["space-exploration"] then
    local noise = require('noise');
    -- decrease richness of copper a bit
    data.raw.resource["copper-ore"].autoplace.richness_expression = 
      data.raw.resource["copper-ore"].autoplace.richness_expression * noise.to_noise_expression(3/4)
  else
    log("Replacing vanilla copper-ore autoplace")
    local resource_autoplace = require('resource-autoplace');
    data.raw.resource["copper-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "copper-ore",
      order = "b",
      base_density = 6, -- decreased from 8 in vanilla
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.1,
      starting_rq_factor_multiplier = 1.1,
      candidate_spot_count = 22,
    }
  end
end
    
-- Must be last
util.create_list()
