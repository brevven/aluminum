-- Additional recipes if Space Exploration mod is enabled
local util = require("data-util");

if mods["space-exploration"] then
  se_delivery_cannon_recipes["aluminum-ore"] = {name= "aluminum-ore"}
  se_delivery_cannon_recipes["alumina"] = {name= "alumina"}
  se_delivery_cannon_recipes["aluminum-plate"] = {name= "aluminum-plate"}

  data:extend({
  {
    type = "recipe",
    icons = {
      { icon = "__base__/graphics/icons/landfill.png", icon_size = 64, icon_mipmaps = 3 },
      { icon = "__bzaluminum__/graphics/icons/aluminum-ore.png", icon_size = 64, scale = 0.25},
    },
    name = "landfill-aluminum-ore",
    category = "hard-recycling",
    order = "z-b-aluminum",
    subgroup = "terrain",
    result = "landfill",
    ingredients = {{"aluminum-ore", 50}},
  }
  })

if string.sub(mods["space-exploration"], 1, 3) == "0.6" then
  data:extend({
  {
    type = "item-subgroup",
    name = "aluminum",
    group = "resources",
    order = "a-h-z-a",
  }
  })
  util.set_item_subgroup("alumina", "aluminum")
  util.set_item_subgroup("aluminum-plate", "aluminum")
  data:extend({
  {
    type = "item",
    name = "aluminum-ingot",
    icons = {{icon = "__bzaluminum__/graphics/icons/aluminum-ingot.png", icon_size = 128}},
    order = "b-b",
    stack_size = 50,
    subgroup = "aluminum",
  },
  {
    type = "fluid",
    name = "molten-aluminum",
    default_temperature = 660,
    max_temperature = 660,
    base_color = {r=230, g=230, b=220},
    flow_color = {r=230, g=230, b=220},
    icons = {{icon = "__bzaluminum__/graphics/icons/molten-aluminum.png", icon_size = 128}},
    order = "a[molten]-a",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false,
    subgroup = "fluid",
  },
  {
    type = "recipe",
    category = "smelting",
    name = "molten-aluminum",
    main_product = "molten-aluminum",
    subgroup = "aluminum",
    results = {
      {type = "fluid", name = "molten-aluminum", amount = mods.Krastorio2 and 750 or 900},
    },
    energy_required = 60,
    ingredients = {
      {name = "alumina", amount = 24},
      {type = "fluid", name = "se-pyroflux", amount = 10},
    },
    enabled = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
    order = "a-a"
  },
  {
    type = "recipe",
    name = "aluminum-ingot",
    category = "casting",
    results = {{"aluminum-ingot", 1}},
    energy_required = 100,
    ingredients = {
      {type = "fluid", name = "molten-aluminum", amount = 250},
    },
    enabled = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
  },
  {
    type = "recipe",
    category = "crafting",
    name = "aluminum-ingot-to-plate",

    icons = {
      {icon = "__bzaluminum__/graphics/icons/aluminum-plate.png", icon_size = 128, icon_mipmaps = 3},
      {icon = "__bzaluminum__/graphics/icons/aluminum-ingot.png", icon_size = 128, scale = 0.125, shift = {-8, -8}},
    },
    results = {
      {name = "aluminum-plate", amount = 10},
    },
    energy_required = 5,
    ingredients = {
      {name = "aluminum-ingot", amount = 1}
    },
    enabled = false,
    always_show_made_in = true,
    allow_decomposition = false,
    order = "a-c-b"
  },
  })
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "molten-aluminum"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "aluminum-ingot"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "aluminum-ingot-to-plate"})
  if mods["Krastorio2"] then
    se_delivery_cannon_recipes["enriched-aluminum"] = {name= "enriched-aluminum"}
    util.set_item_subgroup("enriched-aluminum", "aluminum")
  else
    if util.me.byproduct() then util.add_product("molten-aluminum", {"silica", 6}) end
  end
else
  -- Organization
  data.raw.item["aluminum-plate"].subgroup = "plates"
  data.raw.recipe["aluminum-plate"].subgroup = "plates"


  data:extend({
  {
    type = "recipe",
    icons = {
      { icon = "__base__/graphics/icons/landfill.png", icon_size = 64, icon_mipmaps = 3 },
      { icon = "__bzaluminum__/graphics/icons/aluminum-ore.png", icon_size = 64, scale = 0.25},
    },
    name = "landfill-aluminum-ore",
    category = "hard-recycling",
    order = "z-b-aluminum",
    subgroup = "terrain",
    result = "landfill",
    ingredients = {{"aluminum-ore", 50}},
  }
  })

  if mods["Krastorio2"] then
    data:extend({
    {
      type = "recipe",
      name = "enriched-alumina-smelting-vulcanite",
      category = "smelting",
      order = "d[alumina]",
      energy_required = 24,
      enabled = false,
      always_show_made_in = true,
      allow_as_intermediate = false,
      ingredients = {
        {name = "enriched-aluminum", amount = 8},
        {name = "se-vulcanite-block", amount = 1},
      },
      results = {
        {name = "alumina", amount = 12},
      },
      icons =
      {
        { icon = "__bzaluminum__/graphics/icons/alumina.png", icon_size = 128 },
        { icon = "__space-exploration-graphics__/graphics/icons/vulcanite-block.png", icon_size = 64, scale=0.25, shift= {-10, -10}},
      },
      
    },
    })
    table.insert(data.raw.technology["se-processing-vulcanite"].effects, 
        {type = "unlock-recipe", recipe= "enriched-alumina-smelting-vulcanite"})
    data.raw.recipe["enriched-alumina"].order= "d[alumina]"
    se_delivery_cannon_recipes["enriched-aluminum"] = {name= "enriched-aluminum"}
  else
    data:extend({
    {
      type = "recipe",
      name = "alumina-smelting-vulcanite",
      category = "smelting",
      subgroup = "plates",
      order = "d[alumina]",
      energy_required = 24,
      enabled = false,
      always_show_made_in = true,
      allow_as_intermediate = false,
      ingredients = {
        {name = "aluminum-ore", amount = 8},
        {name = "se-vulcanite-block", amount = 1},
      },
      results = {
        {name = "alumina", amount = util.me.byproduct() and 10 or 12},
      },
      icons =
      {
        { icon = "__bzaluminum__/graphics/icons/alumina.png", icon_size = 128},
        { icon = "__space-exploration-graphics__/graphics/icons/vulcanite-block.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-10, -10}},
      },

      
    },
    })
    if util.me.byproduct() then util.add_product("alumina-smelting-vulcanite", {"silica", 2}) end
    table.insert(data.raw.technology["se-processing-vulcanite"].effects, 
        {type = "unlock-recipe", recipe= "alumina-smelting-vulcanite"})
  end
  data:extend({
    {
      type = "recipe",
      name = "aluminum-plate-smelting-vulcanite",
      category = "smelting",
      subgroup = "plates",
      order = "d[aluminum-plate]",
      energy_required = 24,
      enabled = false,
      always_show_made_in = true,
      allow_as_intermediate = false,
      ingredients = {
        {name = "alumina", amount = 8},
        {name = "se-vulcanite-block", amount = 1},
      },
      results = {
        {name = "aluminum-plate", amount = 12},
      },
      icons =
      {
        { icon = "__bzaluminum__/graphics/icons/aluminum-plate.png", icon_size = 128},
        { icon = "__space-exploration-graphics__/graphics/icons/vulcanite-block.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-10, -10}},
      },


    },
  })
  table.insert(data.raw.technology["se-processing-vulcanite"].effects, 
               {type = "unlock-recipe", recipe= "aluminum-plate-smelting-vulcanite"})
end
end
