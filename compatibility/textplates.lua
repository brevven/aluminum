local util = require("data-util");

if mods.textplates then
  local material = "copper"
  local prerequisite_tech = data.raw.technology[material.."-processing"]
  data:extend({{
    type = "technology",
    name = "textplates-"..material,
    effects = {
    },
    icon = "__textplates__/graphics/entity/"..material.."/t.png",
    icon_size = 128,
    order = "a",
    prerequisites = {material.."-processing"},
    unit = {
      count = 10,
      ingredients = table.deepcopy(prerequisite_tech.unit.ingredients),
      time = prerequisite_tech.unit.time
    },
    localised_name = { "technology-name.textplate", {"textplates.".. material.."-C"} }
  }})
  util.add_unlock_force("textplates-"..material, "textplate-small-"..material)
  util.add_unlock_force("textplates-"..material, "textplate-large-"..material)
end

