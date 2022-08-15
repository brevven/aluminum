local util = require("data-util");

if not util.se6() and not data.raw["item-subgroup"]["cable"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "cable",
      group = "intermediate-products",
      order = "f-z",
    }
  })
  util.set_item_subgroup("copper-cable", "cable")
end
