local util = require("data-util");

if mods["Rich-Rocks-Requiem"] then
  if data.raw.recipe["rrr-stone-processing"] then
    table.insert(data.raw.recipe["rrr-stone-processing"].results,
      {name = "aluminum-ore", probability = 0.25, amount = 1}
    )
  end

  if data.raw.recipe["rrr-raw-ores-processing"] then
    table.insert(data.raw.recipe["rrr-raw-ores-processing"].results,
      {name = "aluminum-ore", probability = 0.75, amount = 10}
    )
  end

end
