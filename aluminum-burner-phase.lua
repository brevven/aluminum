local util = require("data-util");

if not mods.Krastorio2 and not mods["aai-industry"] then
  util.replace_ingredient("offshore-pump", "electronic-circuit", "aluminum-cable")
  util.replace_ingredient("lab", "electronic-circuit", "aluminum-cable")
  util.replace_ingredient("electric-mining-drill", "electronic-circuit", "aluminum-cable")
  util.replace_ingredient("assembling-machine-1", "electronic-circuit", "aluminum-cable")
  util.replace_ingredient("radar", "electronic-circuit", "aluminum-cable")

  -- Keep repair pack raw ingredients close to the same
  util.remove_ingredient("repair-pack", "electronic-circuit")
  util.add_ingredient("repair-pack", "aluminum-cable", 3)
  util.add_to_ingredient("repair-pack", "iron-gear-wheel", 1)

  util.add_effect("electronics", { type = "unlock-recipe", recipe = "electronic-circuit" })
  util.add_effect("electronics", { type = "unlock-recipe", recipe = "inserter" })
  util.add_effect("electronics", { type = "unlock-recipe", recipe = "long-handed-inserter" })
  util.remove_recipe_effect("automation", "long-handed-inserter")
  util.set_enabled("electronic-circuit", false)
  util.set_enabled("inserter", false)
  util.add_prerequisite("logistic-science-pack", "electronics")
  util.add_prerequisite("electronics", "copper-processing")
end
