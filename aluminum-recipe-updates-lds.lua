local util = require("data-util");
-- LDS
util.add_prerequisite("low-density-structure", "aerospace-alloys")
util.remove_ingredient("low-density-structure", "copper-plate")
util.remove_ingredient("low-density-structure", "steel-plate")
util.remove_ingredient("low-density-structure", "titanium-plate")
local amount = 20
if mods.bzzirconium then
  if mods.Krastorio2 and data.raw.item["cermet"] then
    amount = 6
  else
    amount = 10
  end
else
  if mods.Krastorio2 then
    amount = 14
  end
end
util.add_ingredient("low-density-structure", "aluminum-2219", amount)

if mods["space-exploration"] then
  util.remove_ingredient("se-low-density-structure-beryllium", "copper-plate")
  util.remove_ingredient("se-low-density-structure-beryllium", "steel-plate")
  util.remove_ingredient("se-low-density-structure-beryllium", "titanium-plate")
  if mods.bzzirconium then
    amount = 2
  else
    amount = 10
  end
  util.add_ingredient("se-low-density-structure-beryllium", "aluminum-2219", amount)
end
