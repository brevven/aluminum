local util = require("data-util");

-- ADD PURIFICATION RECIPE

local al2 = "el_aluminum_item"


-- Swap out all 248k titanium for BZ titanium_plate
for i, recipe in pairs(data.raw.recipe) do
  util.replace_ingredient(recipe.name, al2, "aluminum-plate")
  util.replace_product(recipe.name, al2, "aluminum-plate")
end

-- Remove 248k titanium plate
util.remove_raw("item", al2)

-- glass uses alumina
util.multiply_recipe("fi_arc_glass_recipe", 2)
util.replace_some_ingredient("fi_arc_glass_recipe", "silica", 2, "alumina", 1) 

-- Stone purification should produce even outputs now
util.add_to_ingredient("el_purify_stone_recipe", "stone", 5)
util.add_to_ingredient("el_purify_stone_recipe", "water", 50)
util.add_to_product("el_purify_stone_recipe", "el_materials_pure_iron", 1)
util.add_to_product("el_purify_stone_recipe", "el_materials_pure_copper", 1)
util.add_to_product("el_purify_stone_recipe", "el_dirty_water", 50)
util.multiply_time("el_purify_stone_recipe", 1.5)

-- Unlock new aluminum purification recipe
util.add_effect("el_purifier_tech", {type = "unlock-recipe", recipe = "el_purify_aluminum_recipe"})

-- Remove no-longer-necessary aluminum-focused purification
util.remove_raw("technology", "el_purifier_2_tech")
util.remove_raw("recipe", "el_purify_stone_2_recipe")

