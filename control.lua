local util = require("control-util")

function on_console_chat(event)
  if event.message and string.lower(event.message) == "bzlist" then
    local player = game.players[event.player_index]
    if player and player.connected then
      local list = util.get_list()
      if list and #list>0 then
        local filename = util.me.name..".txt"
        game.write_file(filename, list, false, event.player_index)
        player.print("Wrote recipes to script-output/"..filename)
      end
    end
  end
end
script.on_event(defines.events.on_console_chat, on_console_chat)
