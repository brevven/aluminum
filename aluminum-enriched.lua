-- Enriched Lead for Krastorio2
local util = require("data-util");

if mods["Krastorio2"] then
data:extend(
{
  {
    type = "item",
    name = "enriched-aluminum",
    icon_size = 128,
    icon = "__bzaluminum__/graphics/icons/enriched-aluminum.png",
    pictures = {
      {filename="__bzaluminum__/graphics/icons/enriched-aluminum.png", size=128, scale=0.125},
      {filename="__bzaluminum__/graphics/icons/enriched-aluminum-1.png", size=128, scale=0.125},
      {filename="__bzaluminum__/graphics/icons/enriched-aluminum-2.png", size=128, scale=0.125},
      {filename="__bzaluminum__/graphics/icons/enriched-aluminum-3.png", size=128, scale=0.125},
    },
    subgroup = "raw-material",
    order = "e05-a[enriched-ores]-a1[enriched-aluminum]",
    stack_size = util.get_stack_size(100)
  },
  {
    type = "recipe",
    name = "enriched-aluminum",
    icon = "__bzaluminum__/graphics/icons/enriched-aluminum.png",
    icon_size = 128,
    category = "chemistry",
    energy_required = 3,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    allow_productivity = true,
    ingredients =
    {
      {type = "fluid", name = "sulfuric-acid", amount = 3},
      {type = "fluid", name = "water", amount = 25, catalyst_amount = 25},
      {type = "item",  name = "aluminum-ore", amount = 9}
    },
    results =
    { 
      {type = "item",  name = "enriched-aluminum", amount = 6},
      {type = "fluid", name = "dirty-water", amount = 25, catalyst_amount = 25}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.721, g = 0.525, b = 0.043, a = 0.000},
      secondary = {r = 0.200, g = 0.680, b = 0.300, a = 0.357},
      tertiary = {r = 0.690, g = 0.768, b = 0.870, a = 0.000}, 
      quaternary = {r = 0.0, g = 0.980, b = 0.603, a = 0.900}
    },
    subgroup = "raw-material",
    order = "e03[enriched-aluminum]"
  },
  {
      type = "recipe",
      name = "enriched-alumina",
      icons =
      {
        { icon = "__bzaluminum__/graphics/icons/alumina.png", icon_size = 128 },
        { icon = "__bzaluminum__/graphics/icons/enriched-aluminum.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
      },
      category = "smelting",
      energy_required = 16,
      enabled = false,
      always_show_made_in = true,
      always_show_products = true,
      allow_productivity = true,
      ingredients = { {"enriched-aluminum", 5} },
      results = { {"alumina", 5} },
      order = "b[alumina]-b[enriched-alumina]",
  },	
	{
		type = "recipe",
		name = "dirty-water-filtration-aluminum",
		category = "fluid-filtration",
		icons =
		{
			{
				icon = data.raw.fluid["dirty-water"].icon,
				icon_size = data.raw.fluid["dirty-water"].icon_size
			},
			{
				icon = data.raw.item["aluminum-ore"].icon,
				icon_size =	data.raw.item["aluminum-ore"].icon_size,
				scale = 0.20 * (data.raw.fluid["dirty-water"].icon_size/data.raw.item["aluminum-ore"].icon_size),
				shift = {0, 4}
			}
		},
		icon_size = data.raw.fluid["dirty-water"].icon_size,
		energy_required = 2,
		enabled = false,
		allow_as_intermediate = false,
		always_show_made_in = true,
		always_show_products = true,
		ingredients =
		{
			{type = "fluid", name = "dirty-water", amount = 100, catalyst_amount = 100},
		},
		results =
		{
			{type = "fluid", name = "water", amount = 90, catalyst_amount = 90},
			mods.bzsilicon and {type = "item",  name = "silica", amount = 1} or 
			{type = "item",  name = "stone", probability = 0.40, amount = 1},
			{type = "item",  name = "aluminum-ore", probability = 0.10, amount = 1},
		},
		crafting_machine_tint =
		{
			primary = {r = 0.60, g = 0.20, b = 0, a = 0.6},
			secondary = {r = 1.0, g = 0.843, b = 0.0, a = 0.9}
		},
		subgroup = "raw-material",
		order = "w013[dirty-water-filtration-aluminum]"
	}
}
)
util.add_effect("kr-enriched-ores", { type = "unlock-recipe", recipe = "enriched-aluminum" })
util.add_effect("kr-enriched-ores", { type = "unlock-recipe", recipe = "enriched-alumina" })
util.add_effect("kr-enriched-ores", { type = "unlock-recipe", recipe = "dirty-water-filtration-aluminum" })
end
