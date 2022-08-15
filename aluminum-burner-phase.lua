local util = require("data-util");

if not mods.Krastorio2 and not mods["aai-industry"] then
  util.replace_ingredient("offshore-pump", "electronic-circuit", "aluminum-cable")
  util.replace_ingredient("lab", "electronic-circuit", "aluminum-cable")
  util.replace_ingredient("electric-mining-drill", "electronic-circuit", "aluminum-cable")
  util.replace_ingredient("assembling-machine-1", "electronic-circuit", "aluminum-cable")
  util.replace_ingredient("radar", "electronic-circuit", "aluminum-cable")
  util.replace_ingredient("splitter", "electronic-circuit", "aluminum-cable")

  -- Keep repair pack raw ingredients close to the same
  util.remove_ingredient("repair-pack", "electronic-circuit")
  util.remove_ingredient("repair-pack", "copper-cable")
  util.add_ingredient("repair-pack", "aluminum-cable", 3)
  util.set_ingredient("repair-pack", "iron-gear-wheel", 3)

  util.add_effect("electronics", { type = "unlock-recipe", recipe = "electronic-circuit" })
  util.add_effect("electronics", { type = "unlock-recipe", recipe = "inserter" })
  util.add_effect("electronics", { type = "unlock-recipe", recipe = "long-handed-inserter" })
  util.remove_recipe_effect("automation", "long-handed-inserter")
  util.set_enabled("electronic-circuit", false)
  util.set_enabled("inserter", false)
  util.add_prerequisite("logistic-science-pack", "electronics")
end

if mods.Krastorio2 then
  util.replace_ingredient("automation-core", "copper-plate", "aluminum-plate")
  util.replace_ingredient("kr-wind-turbine", "copper-cable", "aluminum-cable")
  util.replace_ingredient("kr-crusher", "copper-cable", "aluminum-cable")
  util.replace_ingredient("kr-sentinel", "copper-cable", "aluminum-cable")
  util.replace_ingredient("repair-pack", "copper-plate", "aluminum-plate")
  util.replace_ingredient("lab", "copper-plate", "aluminum-plate")
  util.replace_ingredient("lab", "copper-cable", "aluminum-cable")

  util.remove_ingredient("basic-tech-card", "copper-cable")
  util.add_ingredient("basic-tech-card", "aluminum-cable", 1)

  util.add_prerequisite("automation-science-pack", "copper-processing")
end

if mods["aai-industry"] then
  util.replace_ingredient("burner-assembling-machine", "iron-plate", "aluminum-plate")
  util.replace_ingredient("small-iron-electric-pole", "copper-cable", "aluminum-cable")
  util.set_ingredient("small-iron-electric-pole", "aluminum-cable", 1)
  util.remove_ingredient("electric-motor", "copper-cable")
  util.add_ingredient("electric-motor", "aluminum-cable", 1)
  util.replace_ingredient("electric-motor", "iron-plate", "aluminum-plate")
  util.replace_ingredient("motor", "iron-plate", "aluminum-plate")
  util.replace_ingredient("repair-pack", "copper-plate", "aluminum-plate")
  util.replace_ingredient("burner-lab", "copper-plate", "aluminum-plate")
end

if mods["aai-industry"] and mods.Krastorio2 then
  util.remove_prerequisite("copper-processing", "automation")
  util.add_prerequisite("copper-processing", "electricity")

  util.remove_prerequisite("logistics", "automation-science-pack")
  util.remove_prerequisite("fuel-processing", "automation-science-pack")
  util.remove_prerequisite("electricity", "automation-science-pack")
  util.remove_prerequisite("kr-sentinel", "automation-science-pack")
  util.set_tech_recipe("logistics", {{"basic-tech-card", 1}})
  util.set_tech_recipe("fuel-processing", {{"basic-tech-card", 1}})
  util.set_tech_recipe("electricity", {{"basic-tech-card", 1}})
  util.set_tech_recipe("kr-sentinel", {{"basic-tech-card", 1}})
  util.set_tech_recipe("kr-basic-fluid-handling", {{"basic-tech-card", 1}})

  util.add_prerequisite("deadlock-stacking-1", "automation-science-pack")
  util.add_prerequisite("kr-radar", "automation-science-pack")
  util.add_prerequisite("automation", "automation-science-pack")
  util.add_prerequisite("kr-steam-engine", "automation-science-pack")

  -- TODO basic fluid handling and grpahite

end

-- Industrial Display Plates
util.add_unlock_force("copper-processing", "copper-display-small")
util.add_unlock_force("copper-processing", "copper-display-medium")
util.add_unlock_force("copper-processing", "copper-display")

util.replace_ingredient("submachine-gun", "copper-plate", "aluminum-plate")
util.replace_ingredient("pistol", "copper-plate", "aluminum-plate")
util.replace_ingredient("shotgun", "copper-plate", "aluminum-plate")
util.replace_ingredient("shotgun-shell", "copper-plate", "stone")
util.replace_ingredient("automation-science-pack", "copper-plate", "aluminum-plate")
util.replace_ingredient("small-electric-pole", "copper-cable", "aluminum-cable")
util.set_ingredient("small-electric-pole", "aluminum-cable", 1)
util.replace_ingredient("gun-turret", "copper-cable", "aluminum-cable")
util.replace_ingredient("gun-turret", "copper-plate", "aluminum-plate")

util.set_enabled("copper-plate", false)
util.set_enabled("copper-cable", false)
util.add_prerequisite("electronics", "copper-processing")
util.add_prerequisite("foundry", "copper-processing")
util.add_prerequisite("heavy-armor", "copper-processing")

util.set_enabled("deadlock-copper-lamp", false)
util.add_effect("copper-processing", { type = "unlock-recipe", recipe = "deadlock-copper-lamp" })

util.add_unlock_force("electronics", "electronic-circuit")
util.replace_ingredients_prior_to("electronics", "electronic-circuit", "aluminum-cable")
util.replace_ingredients_prior_to("copper-processing", "copper-cable", "aluminum-cable")
util.replace_ingredients_prior_to("copper-processing", "copper-plate", "aluminum-plate")
