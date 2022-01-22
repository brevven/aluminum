local util = require("data-util");


util.replace_ingredient("medium-electric-pole", "copper-plate", "acsr-cable")
util.replace_ingredient("big-electric-pole", "copper-plate", "acsr-cable")
util.replace_ingredient("substation", "copper-plate", "acsr-cable")
util.add_ingredient("substation", "aluminum-plate", 4)

util.replace_some_ingredient("light-armor", "iron-plate", 20, "alumina", 20)
util.replace_some_ingredient("heavy-armor", "copper-plate", 20, "alumina", 50)
util.replace_some_ingredient("laser-turret", "steel-plate", 10, "alumina", 10)
util.replace_some_ingredient("tank", "steel-plate", 10, "alumina", 40)

util.replace_ingredient("car", "iron-plate", "aluminum-plate")
util.replace_ingredient("cargo-wagon", "iron-plate", "aluminum-plate")
util.replace_some_ingredient("locomotive", "steel-plate", 10, "aluminum-plate", 20)
util.add_ingredient("roboport", "aluminum-plate", 45)
util.replace_ingredient("assembling-machine-1", "iron-plate", "aluminum-plate")

util.replace_ingredient("fast-inserter", "iron-plate", "aluminum-plate")
util.replace_ingredient("long-handed-inserter", "iron-plate", "aluminum-plate")


util.replace_some_ingredient("rocket-silo", "concrete", 500, "alumina", 500)
util.replace_some_ingredient("rocket-silo", "steel-plate", 500, "aluminum-plate", 500)


util.add_ingredient("kr-white-reinforced-plate", "alumina", 10)
util.add_ingredient("kr-black-reinforced-plate", "alumina", 10)
