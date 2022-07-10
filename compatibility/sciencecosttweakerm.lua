local util = require("data-util")

util.replace_ingredient("sct-lab1-mechanization", "electronic-circuit", "aluminum-cable")

util.replace_ingredient("sct-t1-magnet-coils", "copper-plate", "aluminum-plate")
if data.raw.item["sct-t1-magnet-coils"] then
  util.set_item_icons("sct-t1-magnet-coils", 
                      {{
                        icon=data.raw.item["sct-t1-magnet-coils"].icon,
                        icon_size=data.raw.item["sct-t1-magnet-coils"].icon_size,
                        tint = {a=1, r=.66, b=.99, g=.9},
                      }})
end
