-- Aluminum smelting

local util = require("data-util");
local futil = require("util");

local alumina_results = {}

if mods.bzsilicon and not mods.Krastorio2 then
  alumina_results ={
    {type="item", name = "alumina", amount=1, probability=0.95},
    {type="item", name = "silica", amount=1, probability=0.05},
  }
elseif mods.bzsilicon and mods.Krastorio2 then
  alumina_results ={
    {type="item", name = "alumina", amount=5, probability=0.95},
    {type="item", name = "silica", amount=1, probability=0.25},
  }
elseif mods.Krastorio2 then
  alumina_results ={
    {type="item", name = "alumina", amount=5},
  }
else 
  alumina_results ={
    {type="item", name = "alumina", amount=1},
  }
end

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"] ) then
data:extend({
  {
    type = "recipe",
    name = "alumina",
    category = "smelting",
    subgroup = "raw-material",
    order = "d[alumina]",
    icons = (mods["Krastorio2"] and
        {
          { icon = "__bzaluminum__/graphics/icons/alumina.png", icon_size = 128},
          { icon = "__bzaluminum__/graphics/icons/aluminum-ore.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -8}},
        } or {
          { icon = "__bzaluminum__/graphics/icons/alumina.png", icon_size = 128},
        }
),
    enabled = true,
    energy_required = mods.Krastorio2 and 16 or 3.2,
    ingredients = {{"aluminum-ore", mods.Krastorio2 and 10 or 1}},
    results = alumina_results,
  },
  {
    type = "recipe",
    name = "aluminum-plate",
    category = "smelting",
    subgroup = "raw-material",
    order = "d[aluminum-plate]",
    icons = (mods["Krastorio2"] and
        {
          { icon = "__bzaluminum__/graphics/icons/aluminum-plate.png", icon_size = 128},
          { icon = "__bzaluminum__/graphics/icons/alumina.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
        } or {
          { icon = "__bzaluminum__/graphics/icons/aluminum-plate.png", icon_size = 128},
        }
),
    normal = (mods["Krastorio2"] and
        {
          enabled = true,
          energy_required = 16,
          ingredients = {{"alumina", 10}},
          results = {
            {type="item", name = "aluminum-plate", amount=10}
          }
        } or
        {
          enabled = true,
          energy_required = 3.2,
          ingredients = {{"alumina", 1}},
          results = {
            {type="item", name = "aluminum-plate", amount=1}
          }
        }),
    expensive =
    {
      enabled = true,
      energy_required = 3.2,
      ingredients = {{"alumina", 2}},
      results = {
        {type="item", name = "aluminum-plate", amount=1},
      }
    }
  },
  {
    type = "item",
    name = "alumina",
    icon = "__bzaluminum__/graphics/icons/alumina.png",
    icon_size = 128,
    pictures = {
      {filename="__bzaluminum__/graphics/icons/alumina.png", size=128, scale=0.125},
      {filename="__bzaluminum__/graphics/icons/alumina-1.png", size=128, scale=0.125},
      {filename="__bzaluminum__/graphics/icons/alumina-2.png", size=128, scale=0.125},
      {filename="__bzaluminum__/graphics/icons/alumina-3.png", size=128, scale=0.125},
    },
    subgroup = "raw-material",
    order = "b[alumina]",
    stack_size = util.get_stack_size(100)
  },
  {
    type = "item",
    name = "aluminum-plate",
    icon = "__bzaluminum__/graphics/icons/aluminum-plate.png",
    icon_size = 128,
    subgroup = "raw-material",
    order = "b[aluminum-plate]",
    stack_size = util.get_stack_size(100)
  },
})

if mods.bzsilicon then
  landfill = futil.table.deepcopy(data.raw.recipe["landfill"])
  landfill.name = "landfill-silica"
  data:extend({landfill})
  util.replace_some_ingredient("landfill-silica", "stone", 10,
                               "silica", mods["space-exploration"] and 100 or 20)
  util.remove_prerequisite("landfill", "logistic-science-pack")
  util.set_tech_recipe("landfill", {{"automation-science-pack", 1}})
  util.add_effect("landfill", {type="unlock-recipe", recipe="landfill-silica"})
end


data:extend({
  {
    type = "technology",
    name = "copper-processing",
    icons = {
      {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64, icon_mipmaps=4,
      },
    },
    effects = {
      { type = "unlock-recipe", recipe = "copper-plate" },
      { type = "unlock-recipe", recipe = "copper-cable" },
    },
    unit = {
      count = 10, time = 15,
      ingredients = mods.Krastorio2 and 
      {{"basic-tech-card", 1}} or {{"automation-science-pack", 1}},
    },
    prerequisites = {"automation"},
    order = "b-b",
  },
})

data:extend({
  {
    type = "technology",
    name = "reinforced-cable",
    icon = "__bzaluminum__/graphics/technology/reinforced-cable.png",
    icon_size = 256,
    effects = {
      { type = "unlock-recipe", recipe = "acsr-cable" },
    },
    unit = {
      count = 60, time = 15,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    },
    prerequisites = {"steel-processing"},
    order = "b-b",
  },
})

util.add_prerequisite("electric-energy-distribution-1", "reinforced-cable")
data:extend({
  {
    type = "item",
    name = "aluminum-cable",
    icon = "__bzaluminum__/graphics/icons/aluminum-cable.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "b[aaac-cable]",
    stack_size = util.get_stack_size(100),
  },
  {
    type = "recipe",
    name = "aluminum-cable",
    category = "crafting",
    order = "d[aaac-cable]",
    enabled = true,
    energy_required = 0.5,
    ingredients = {{"aluminum-plate", 2}},
    results = {{"aluminum-cable", 1}},
  },
  {
    type = "item",
    name = "acsr-cable",
    icon = "__bzaluminum__/graphics/icons/acsr-cable.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    order = "b[acsr-cable]",
    stack_size = 50,
  },
  {
    type = "recipe",
    name = "acsr-cable",
    category = "crafting",
    order = "d[acsr-cable]",
    enabled = false,
    energy_required = 0.5,
    ingredients = {{"aluminum-cable", 1}, {"steel-plate", 1}},
    results = {{"acsr-cable", 1}},
  }
})

local plug = {
  {"alumina", 1},
  {"copper-plate", 1},
  {"iron-plate", 1}, -- replace with tungsten plate later
}
if mods.bzzirconium then 
  table.insert(plug, {"zirconia", 1})
end
data:extend({
  {
    type = "item",
    name = "spark-plug",
    icon = "__bzaluminum__/graphics/icons/spark-plug.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    order = "b[spark-plug]",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "spark-plug",
    category = "crafting",
    order = "d[spark-plug]",
    enabled = false,
    energy_required = 2,
    ingredients = plug,
    results = {{"spark-plug", #plug}},
  }
})
util.add_effect("engine", { type = "unlock-recipe", recipe = "spark-plug" })
util.replace_ingredient("spark-plug", "iron-plate", "tungsten-plate")


local aluminum_6061 = {}
aluminum_6061["aluminum-plate"] = 18
aluminum_6061["copper-plate"] = 1
aluminum_6061["iron-plate"] = 1
if mods.bzsilicon or mods.Krastorio2 then
  aluminum_6061["silicon"] = 1
  aluminum_6061["aluminum-plate"] = aluminum_6061["aluminum-plate"] - 1
end
if mods.Krastorio2 then
  aluminum_6061["rare-metals"] = 1
  aluminum_6061["aluminum-plate"] = aluminum_6061["aluminum-plate"] - 1
end
data:extend({
  {
    type = "item",
    name = "aluminum-6061",
    icon = "__bzaluminum__/graphics/icons/aluminum-6061.png",
    icon_size = 128,
    subgroup = "raw-material",
    order = "zz[aluminum-6061]",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "aluminum-6061",
    category = "founding",
    subgroup = "foundry-intermediate",
    order = "zz[aluminum-6061]",
    enabled = false,
    energy_required = 100,
    ingredients = {},
    results = {{"aluminum-6061", 20}},
  },
  {
    type = "technology",
    name = "basic-alloys",
    icon = "__bzaluminum__/graphics/icons/aluminum-6061.png",
    icon_size = 128,
    effects = {
      { type = "unlock-recipe", recipe = "aluminum-6061" },
    },
    unit = {
      count = 60, time = 30,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    },
    prerequisites = {"advanced-material-processing"},
    order = "b-b",
  },
})
for item, count in pairs(aluminum_6061) do
  util.add_ingredient("aluminum-6061", item, count)
end
util.add_prerequisite("basic-alloys", "silicon-processing")
util.add_prerequisite("basic-alloys", "kr-silicon-processing")

local aluminum_2219 = {}
aluminum_2219["aluminum-plate"] = 16
aluminum_2219["copper-plate"] = 4
if mods.bztitanium then
  aluminum_2219["titanium-plate"] = 2
  aluminum_2219["aluminum-plate"] = aluminum_2219["aluminum-plate"] - 1
  aluminum_2219["copper-plate"] = aluminum_2219["copper-plate"] - 1
end
if mods.bzzirconium then
  aluminum_2219["zirconium-plate"] = 1
  aluminum_2219["aluminum-plate"] = aluminum_2219["aluminum-plate"] - 1
end
if mods.Krastorio2 then
  aluminum_2219["rare-metals"] = 1
  aluminum_2219["aluminum-plate"] = aluminum_2219["aluminum-plate"] - 1
end
data:extend({
  {
    type = "item",
    name = "aluminum-2219",
    icon = "__bzaluminum__/graphics/icons/aluminum-2219.png",
    icon_size = 128,
    subgroup = "raw-material",
    order = "zz[aluminum-2219]",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "aluminum-2219",
    category = "founding",
    subgroup = "foundry-intermediate",
    order = "zz[aluminum-2219]",
    enabled = false,
    energy_required = 100,
    ingredients = {},
    results = {{"aluminum-2219", 20}},
  },
  {
    type = "technology",
    name = "aerospace-alloys",
    icon = "__bzaluminum__/graphics/icons/aluminum-2219.png",
    icon_size = 128,
    effects = {
      { type = "unlock-recipe", recipe = "aluminum-2219" },
    },
    unit = {
      count = 60, time = 30,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
    },
    prerequisites = {"basic-alloys"},
    order = "b-b",
  },
})
for item, count in pairs(aluminum_2219) do
  util.add_ingredient("aluminum-2219", item, count)
end
util.add_prerequisite("aerospace-alloys", "titanium-processing")
util.add_prerequisite("aerospace-alloys", "zirconia-processing")

if mods.bztitanium then
  data:extend({
    {
      type = "item",
      name = "ti-sapphire",
      icon = "__bzaluminum__/graphics/icons/ti-sapphire.png",
      icon_size = 128,
      subgroup = "intermediate-product",
      order = "zz[sapphire-ti]",
      stack_size = 50,
    },
    {
      type = "recipe",
      name = "ti-sapphire",
      icon = "__bzaluminum__/graphics/icons/ti-sapphire.png",
      icon_size = 128,
      category = "chemistry",
      subgroup = "intermediate-product",
      order = "zz[sapphire-ti]",
      enabled = false,
      energy_required = 10,
      ingredients = {
        {"alumina", 10},
        {util.titanium_plate, 1},
        {type="fluid", name=mods.Krastorio2 and "ammonia" or "sulfuric-acid", amount=5},
      },
      results = {{"ti-sapphire", 1}},
    },
  })
  util.add_effect("laser", {type="unlock-recipe", recipe="ti-sapphire"})
  util.add_prerequisite("laser", util.titanium_processing)
  if mods.bzcarbon then
    util.add_ingredient("ti-sapphire", "diamond", 1)
    util.add_product("ti-sapphire", {type="item", name="diamond", amount=1, probability=0.8})
  end
end


end
