-- Deadlock stacking recipes

local util = require("data-util");

if deadlock then
  deadlock.add_stack("aluminum-ore",  "__bzaluminum__/graphics/icons/stacked/aluminum-ore-stacked.png", "deadlock-stacking-1", 64)
  deadlock.add_stack("aluminum-plate",  "__bzaluminum__/graphics/icons/stacked/aluminum-plate-stacked.png", "deadlock-stacking-1", 128)
  deadlock.add_stack("alumina", "__bzaluminum__/graphics/icons/stacked/alumina-stacked.png" , "deadlock-stacking-1", 128)
  deadlock.add_stack("aluminum-cable", nil, "deadlock-stacking-1", 128)
  deadlock.add_stack("acsr-cable", "__bzaluminum__/graphics/icons/stacked/acsr-cable-stacked.png" , "deadlock-stacking-2", 128)
  deadlock.add_stack("spark-plug", "__bzaluminum__/graphics/icons/stacked/spark-plug-stacked.png" , "deadlock-stacking-2", 128)
  deadlock.add_stack("aluminum-6061", "__bzaluminum__/graphics/icons/stacked/aluminum-6061-stacked.png" , "deadlock-stacking-2", 128)
  deadlock.add_stack("aluminum-2219", "__bzaluminum__/graphics/icons/stacked/aluminum-2219-stacked.png" , "deadlock-stacking-3", 128)
  deadlock.add_stack("ti-sapphire", "__bzaluminum__/graphics/icons/stacked/ti-sapphire-stacked.png" , "deadlock-stacking-3", 128)

  if mods.Krastorio2 then
    deadlock.add_stack("enriched-aluminum", "__bzaluminum__/graphics/icons/stacked/enriched-aluminum-ore-stacked.png" , "deadlock-stacking-3", 128)

    util.set_icons("deadlock-stacks-stack-automation-core", {
      {icon="__bzaluminum__/graphics/icons/stacked/automation-core-stacked.png", icon_size=64},
      {icon="__deadlock-beltboxes-loaders__/graphics/icons/square/arrow-d-64.png", icon_size=64, scale=.25},
    })
    util.set_icons("deadlock-stacks-unstack-automation-core", {
      {icon="__bzaluminum__/graphics/icons/stacked/automation-core-stacked.png", icon_size=64},
      {icon="__deadlock-beltboxes-loaders__/graphics/icons/square/arrow-u-64.png", icon_size=64, scale=.25},
    })
    util.set_item_icons("deadlock-stack-automation-core", {
      {icon="__bzaluminum__/graphics/icons/stacked/automation-core-stacked.png", icon_size=64},
    })
  end
  if mods["space-exploration"] then
    deadlock.add_stack("aluminum-ingot", nil, "deadlock-stacking-2", nil)
  end
end

-- Deadlock crating recipes
if deadlock_crating then
  deadlock_crating.add_crate("aluminum-ore", "deadlock-crating-1")
  deadlock_crating.add_crate("aluminum-plate", "deadlock-crating-1")
  deadlock_crating.add_crate("alumina", "deadlock-crating-1")
  deadlock_crating.add_crate("aluminum-cable", "deadlock-crating-1")
  deadlock_crating.add_crate("acsr-cable", "deadlock-crating-2")
  deadlock_crating.add_crate("spark-plug", "deadlock-crating-2")
  deadlock_crating.add_crate("aluminum-6061", "deadlock-crating-2")
  deadlock_crating.add_crate("aluminum-2219", "deadlock-crating-3")
  deadlock_crating.add_crate("ti-sapphire", "deadlock-crating-3")
  if mods.Krastorio2 then
    deadlock_crating.add_crate("enriched-aluminum", "deadlock-crating-2")
  end
  if mods["space-exploration"] then
    deadlock_crating.add_crate("aluminum-ingot", "deadlock-crating-2")
  end
end

