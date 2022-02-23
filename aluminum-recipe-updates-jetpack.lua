local util = require("data-util")

if mods.jetpack then
  util.replace_ingredient("jetpack-1", "steel-plate", "aluminum-plate")
  util.replace_ingredient("jetpack-1", "titanium-plate", "aluminum-plate")
  util.remove_ingredient("jetpack-1", "titanium-plate")
  util.remove_prerequisite("jetpack-1", "solar-panel-equipment")
  util.add_ingredient("jetpack-2", "aluminum-2219", 20)
  util.add_prerequisite("jetpack-2", "aerospace-alloys")
end

