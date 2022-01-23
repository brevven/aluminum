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
end

