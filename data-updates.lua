require("aluminum-recipe-updates")
require("aluminum-recipe-updates-lds")
require("aluminum-recipe-updates-storage")
require("aluminum-recipe-updates-transport")
require("aluminum-recipe-updates-power")
require("aluminum-recipe-updates-jetpack")
require("aluminum-matter")
-- require("omni")
require("map-gen-preset-updates")
require("strange-matter")
require("compatibility/248k")
require("compatibility/sciencecosttweakerm")
require("compatibility/rsc")

local util = require("data-util")
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

if mods.Asteroid_Mining then
  require("__Asteroid_Mining__.scripts.addmodule")
  amfunc.addtype("aluminum-ore", {a = 0,r = 0.58,g = 0.6,b = 0.56})
end
    
require("aluminum-recipe-modules")

-- Must be last
util.create_list()
