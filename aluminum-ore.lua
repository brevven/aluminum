local resource_autoplace = require('resource-autoplace');
local noise = require('noise');

local util = require("data-util");

data:extend({
	{
    type = "autoplace-control",
    category = "resource",
    name = "aluminum-ore",
    richness = true,
    order = "b-e"
	},
	{
    type = "noise-layer",
    name = "aluminum-ore"
	},
	{
    type = "resource",
    icon_size = 64, icon_mipmaps = 3,
    name = "aluminum-ore",
    icon = "__bzaluminum__/graphics/icons/aluminum-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=1.00, g=0.80, b=0.50},
    minable =
    {
      hardness = 1,
      mining_particle = mods.bztitanium and "titanium-ore-particle" or "iron-ore-particle",
      mining_time = 1,
      result = "aluminum-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "aluminum-ore",
      order = "b-z",
      base_density = 6,
      base_spots_per_km2 = 1,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.7,
    },

    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
        stages =
        {
          sheet =
          {
      filename = "__bzaluminum__/graphics/entity/ores/aluminum-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__bzaluminum__/graphics/entity/ores/hr-aluminum-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    },
  },
  {
      type = "item",
      name = "aluminum-ore",
      icon_size = 64, icon_mipmaps = 3,
      icon = "__bzaluminum__/graphics/icons/aluminum-ore.png",
      pictures = {
        {filename="__bzaluminum__/graphics/icons/aluminum-ore.png", size=64, scale=0.25},
        {filename="__bzaluminum__/graphics/icons/aluminum-ore-2.png", size=64, scale=0.25},
        {filename="__bzaluminum__/graphics/icons/aluminum-ore-3.png", size=64, scale=0.25},
        {filename="__bzaluminum__/graphics/icons/aluminum-ore-4.png", size=64, scale=0.25},
      },
      subgroup = "raw-resource",
      order = "t-c-a",
      stack_size = util.get_stack_size(50)
  },
})
