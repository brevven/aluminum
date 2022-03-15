local util = require("data-util");


util.replace_ingredient("car", "iron-plate", "aluminum-6061")
util.replace_some_ingredient("car", "steel-plate", 3, "aluminum-6061", 6) -- if iron was removed from car already
util.add_prerequisite("automobilism", "basic-alloys")
util.add_prerequisite("railway", "basic-alloys")
util.replace_ingredient("cargo-wagon", "iron-plate", "aluminum-6061")
util.replace_some_ingredient("locomotive", "steel-plate", 10, "aluminum-6061", 20)

util.add_prerequisite("turbo-bike", "basic-alloys")
util.replace_ingredient("turbo-bike", "steel-plate", "aluminum-6061")

util.replace_ingredient("Hualing-Truck", "iron-plate", "aluminum-plate") -- LJD
util.replace_ingredient("Hauling-Truck", "iron-plate", "aluminum-plate") -- LJD
util.add_prerequisite("trucks", "basic-alloys")
util.replace_ingredient("dumper-truck", "iron-plate", "aluminum-6061") -- Heavy Truck

-- cargo ships
util.add_prerequisite("automated_water_transport", "basic-alloys")

util.replace_ingredient("floating-electric-pole", "iron-plate", "aluminum-plate")
util.replace_ingredient("indep-boat", "steel-plate", "aluminum-plate")
util.replace_ingredient("buoy", "iron-plate", "aluminum-plate")
util.replace_ingredient("chain_buoy", "iron-plate", "aluminum-plate")

util.replace_ingredient("port", "iron-plate", "aluminum-6061")
util.replace_some_ingredient("cargo_ship", "steel-plate", 200, "aluminum-6061", 200)
util.replace_some_ingredient("oil_tanker", "steel-plate", 150, "aluminum-6061", 150)

-- aircraft
util.replace_ingredient("gunship", "steel-plate", "aluminum-2219")
util.replace_ingredient("gunship", util.titanium_plate, "aluminum-2219")
util.replace_ingredient("gunship", "iron-plate", "aluminum-6061")
util.replace_ingredient("cargo-plane", "steel-plate", "aluminum-2219")
util.replace_ingredient("cargo-plane", "iron-plate", "aluminum-6061")
util.replace_ingredient("cargo-plane", util.titanium_plate, "aluminum-2219")
util.replace_ingredient("flying-fortress", "steel-plate", "aluminum-2219")
util.replace_ingredient("cargo-plane", util.titanium_plate, "aluminum-2219")

-- helicopters
util.replace_ingredient("heli-recipe", "steel-plate", "aluminum-2219")
util.replace_ingredient("heli-recipe", util.titanium_plate, "aluminum-2219")

util.replace_ingredient("adamo-chopper", "steel-plate", "aluminum-2219")
util.replace_ingredient("adamo-chopper", util.titanium_plate, "aluminum-2219")

util.replace_ingredient("raven", "steel-plate", "aluminum-2219")
util.replace_ingredient("raven", util.titanium_plate, "aluminum-2219")

-- AAI Vehicles
util.replace_ingredient("vehicle-hauler", "iron-plate", "aluminum-plate")
util.replace_ingredient("vehicle-chaingunner", "iron-plate", "aluminum-plate")
util.replace_ingredient("vehicle-miner", "iron-plate", "aluminum-plate")
util.replace_ingredient("vehicle-miner-mk2", "steel-plate", "aluminum-plate")
util.replace_ingredient("vehicle-miner-mk3", "steel-plate", "aluminum-6061")
util.replace_ingredient("vehicle-miner-mk4", "steel-plate", "aluminum-6061")
util.replace_ingredient("vehicle-miner-mk5", "steel-plate", "aluminum-2219")
util.replace_ingredient("vehicle-flame-tumbler", "steel-plate", "aluminum-6061")
util.add_ingredient("vehicle-flame-tumbler", "spark-plug", 1)
util.replace_ingredient("vehicle-flame-tank", "steel-plate", "aluminum-6061")
util.replace_ingredient("vehicle-warden", "iron-plate", "aluminum-6061")
util.replace_ingredient("vehicle-laser-tank", "steel-plate", "aluminum-6061")

util.replace_some_ingredient("grappling-gun", "steel-plate", 9, "aluminum-plate", 10)


-- King Jo's
util.replace_ingredient("kj_2a6", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_40kbaneblade", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_40kpredator", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_40kdreadnought", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_40klemanruss", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_aventador", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_fordmustang", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_cybertruck", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_delorean", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_gigahorse", "steel-plate", "aluminum-6061")
util.replace_some_ingredient("kj_pak", "steel-plate", 20, "aluminum-6061", 20)
util.replace_ingredient("kj_maustank", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_panzer4", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_rattetank", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_rex", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_utilitarian", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_warrig", "steel-plate", "aluminum-6061")
util.replace_ingredient("kj_wirbelwind", "steel-plate", "aluminum-6061")

util.replace_ingredient("kj_bf109", "iron-plate", "aluminum-plate")
util.replace_ingredient("kj_ju52", "iron-plate", "aluminum-plate")
util.replace_ingredient("kj_b17", "iron-plate", "aluminum-plate")
util.replace_ingredient("kj_ju87", "iron-plate", "aluminum-plate")
util.replace_ingredient("kj_jug38", "iron-plate", "aluminum-plate")
util.replace_ingredient("kj_ho229", "iron-plate", "aluminum-plate")
util.replace_ingredient("kj_b2", "steel-plate", "aluminum-plate")



util.replace_ingredient("tiger-1", "steel-plate", "aluminum-6061")



-- Dirigible
util.add_prerequisite("dirigible-blimps", "basic-alloys")
util.replace_ingredient("dirigible-blimp", "iron-plate", "aluminum-6061")
util.replace_ingredient("dirigible-vacuum", "iron-plate", "aluminum-6061")


-- Angel's Mass Transit
util.add_prerequisite("angels-crawler-train-3", "aerospace-alloys")
util.add_prerequisite("angels-petro-train-3", "aerospace-alloys")
util.add_prerequisite("angels-smelting-train-3", "aerospace-alloys")
util.remove_prerequisite("angels-crawler-train-3", "low-density-structure")
util.remove_prerequisite("angels-petro-train-3", "low-density-structure")
util.remove_prerequisite("angels-smelting-train-3", "low-density-structure")

util.replace_ingredient("crawler-locomotive", "steel-plate", "aluminum-6061")
util.replace_ingredient("crawler-locomotive-wagon", "steel-plate", "aluminum-6061")
util.replace_ingredient("crawler-bot-wagon", "steel-plate", "aluminum-6061")
util.replace_ingredient("crawler-wagon", "steel-plate", "aluminum-6061")
util.replace_ingredient("crawler-locomotive-2", "steel-plate", "aluminum-6061")
util.replace_ingredient("crawler-locomotive-wagon-2", "steel-plate", "aluminum-6061")
util.replace_ingredient("crawler-bot-wagon-2", "steel-plate", "aluminum-6061")
util.replace_ingredient("crawler-wagon-2", "steel-plate", "aluminum-6061")
util.replace_ingredient("crawler-locomotive-3", "low-density-structure", "aluminum-2219")
util.replace_ingredient("crawler-locomotive-wagon-3", "low-density-structure", "aluminum-2219")
util.replace_ingredient("crawler-bot-wagon-3", "low-density-structure", "aluminum-2219")
util.replace_ingredient("crawler-wagon-3", "low-density-structure", "aluminum-2219")

util.replace_ingredient("petro-locomotive-1", "steel-plate", "aluminum-6061")
util.replace_ingredient("petro-locomotive-1-2", "steel-plate", "aluminum-6061")
util.replace_ingredient("petro-locomotive-1-3", "low-density-structure", "aluminum-2219")

util.replace_ingredient("smelting-locomotive-1", "steel-plate", "aluminum-6061")
util.replace_ingredient("smelting-locomotive-tender", "steel-plate", "aluminum-6061")
util.replace_ingredient("smelting-wagon-1", "steel-plate", "aluminum-6061")
util.replace_ingredient("smelting-locomotive-1-2", "steel-plate", "aluminum-6061")
util.replace_ingredient("smelting-locomotive-tender-2", "steel-plate", "aluminum-6061")
util.replace_ingredient("smelting-wagon-1-2", "steel-plate", "aluminum-6061")
util.replace_ingredient("smelting-locomotive-1-3", "low-density-structure", "aluminum-2219")
util.replace_ingredient("smelting-locomotive-tender-3", "low-density-structure", "aluminum-2219")
util.replace_ingredient("smelting-wagon-1-3", "low-density-structure", "aluminum-2219")

-- Junk trains
util.add_ingredient("JunkTrain", "aluminum-plate", 4)

-- Realistic electric trains
util.add_prerequisite("ret-electric-locomotives", "reinforced-cable")
util.replace_ingredient("ret-electric-locomotive", "steel-plate", "aluminum-6061")
util.replace_ingredient("ret-power-pole", "copper-plate", "acsr-cable")
util.set_ingredient("ret-power-pole", "acsr-cable", 2)

-- Electric trains
util.replace_ingredient("deg-electric-locomotive", "steel-plate", "aluminum-6061")
util.replace_ingredient("deg-battery-charging-station", "copper-cable", "aluminum-cable")

-- se space trains
util.add_ingredient("recipe-space-locomotive", "aluminum-2219", 10)
util.add_ingredient("recipe-space-fluid-wagon", "aluminum-2219", 10)
util.add_ingredient("recipe-space-cargo-wagon", "aluminum-2219", 10)
util.replace_ingredient("space-train-battery-charging-station", "copper-cable", "aluminum-cable")

-- space trains
util.replace_ingredient("space-trains-locomotive", "steel-plate", "aluminum-2219")
util.replace_ingredient("space-trains-short-locomotive", "steel-plate", "aluminum-2219")
util.replace_ingredient("space-trains-cargo-wagon", "steel-plate", "aluminum-2219")
util.replace_ingredient("space-trains-short-cargo-wagon", "steel-plate", "aluminum-2219")
util.replace_ingredient("space-trains-fluid-wagon", "steel-plate", "aluminum-2219")
util.replace_ingredient("space-trains-short-fluid-wagon", "steel-plate", "aluminum-2219")
util.replace_ingredient("space-trains-charger", "copper-cable", "aluminum-cable")

-- SUPERSONIC

util.replace_ingredient("fast-one-mk1 recipe", "iron-plate", "aluminum-6061")
util.replace_ingredient("fast-one-mk2 recipe", "iron-plate", "aluminum-6061")
util.replace_ingredient("fast-one-mk3 recipe", "iron-plate", "aluminum-6061")
util.replace_ingredient("cargo-wagon-immortal-mk2", "iron-plate", "aluminum-6061")
util.replace_ingredient("fluid-wagon-immortal-mk2", "iron-plate", "aluminum-6061")
util.replace_ingredient("cargo-wagon-immortal-mk3", "iron-plate", "aluminum-6061")
util.replace_ingredient("fluid-wagon-immortal-mk3", "iron-plate", "aluminum-6061")

-- Battery locomotive
util.add_ingredient("battery-locomotive", "aluminum-6061", 30)

-- Battery electric train
util.add_ingredient("bet-locomotive", "aluminum-6061", 30)
util.add_ingredient("bet-charger-1", "acsr-cable", 2)
util.add_ingredient("bet-charger-2", "acsr-cable", 2)
util.add_ingredient("bet-charger-3", "acsr-cable", 2)
util.replace_ingredient("bet-charger-1", "copper-cable", "aluminum-cable")
util.replace_ingredient("bet-charger-2", "copper-cable", "aluminum-cable")
util.replace_ingredient("bet-charger-3", "copper-cable", "aluminum-cable")
