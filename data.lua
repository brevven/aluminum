require("cables")
require("aluminum-ore")
require("aluminum-recipe")
require("aluminum-enriched")   -- Enriched Al for Krastorio 2
require("aluminum-recipe-se")         -- Space Exploration
require("compatibility/248k-recipes")
-- require("aluminum-compressed")
local util = require("data-util");


if mods.Krastorio2 then
  if data.raw.item["automation-core"] then
    data.raw.item["automation-core"].icon = "__bzaluminum__/graphics/icons/automation-core.png"
  end
  if data.raw.technology["kr-automation-core"] then
    data.raw.technology["kr-automation-core"].icon = "__bzaluminum__/graphics/technology/automation-core.png"
  end
end

-- Must be last
util.create_list()
