-- Matter recipes for Krastorio2
if mods["Krastorio2"] then
local util = require("data-util");
local matter = require("__Krastorio2__/lib/public/data-stages/matter-util")

data:extend(
{
  {
    type = "technology",
    name = "aluminum-matter-processing",
    icons =
    {
      {
        icon = util.k2assets().."/technologies/matter-coal.png",
        icon_size = 256,
      },
      {
        icon = "__bzaluminum__/graphics/icons/aluminum-ore.png",
        icon_size = 64,
        scale = 1.4,
      }
    },
    prerequisites = {"kr-matter-processing"},
    unit =
  	{
      count = 350,
      ingredients =
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}
      },
      time = 45
    }
  },
})

local flake_graphite_matter = 
	{
    item_name = "aluminum-ore",
    minimum_conversion_quantity = 10,
    matter_value = 5,
    energy_required = 1,
    need_stabilizer = false,
    unlocked_by_technology = "aluminum-matter-processing"
	}
matter.createMatterRecipe(flake_graphite_matter)

local graphite_matter = 
	{
    item_name = "alumina",
    minimum_conversion_quantity = 10,
    matter_value = 7.5,
    energy_required = 2,
    only_deconversion = true,
    need_stabilizer = true,
    unlocked_by_technology = "aluminum-matter-processing"
	}
matter.createMatterRecipe(graphite_matter)
local graphite_matter = 
	{
    item_name = "aluminum-plate",
    minimum_conversion_quantity = 10,
    matter_value = 10,
    energy_required = 3,
    only_deconversion = true,
    need_stabilizer = true,
    unlocked_by_technology = "aluminum-matter-processing"
	}
matter.createMatterRecipe(graphite_matter)
end
