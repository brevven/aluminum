-- Rocket silo construction
local util = require("data-util");

if mods["Rocket-Silo-Construction"] then
  util.replace_ingredient("rsc-construction-stage4", "stone-brick", "alumina")
  util.replace_ingredient("rsc-construction-stage5", "copper-cable", "aluminum-cable", 0.25, true)
  util.replace_ingredient("rsc-construction-stage5", "copper-plate", "aluminum-plate")
end
