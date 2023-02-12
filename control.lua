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


-- Free burner inserter
-- (thanks to modder planetfall for inspiration, from Brass Tacks)
script.on_init(
  function()
    if remote.interfaces["freeplay"] then
      local care_package = remote.call("freeplay", "get_created_items")
      if settings.global["bzaluminum-starting-items"].value then
        care_package["burner-inserter"] = 1
      end
      remote.call("freeplay", "set_created_items", care_package)
    end
  end
)

if script.active_mods["warptorio2_expansion"] then

  function check_container_for_items(container,items)
    local has_all =true
    for k=1,#items do 
      if container.get_item_count(items[k].name)<items[k].count then has_all=false break end
    end
    return has_all 		
  end

  function remove_items_from_container(container,items)
    for k=1,#items do 
      container.remove_item(items[k])
    end	
  end

  script.on_nth_tick(60, function (event)
    if global.done then return end
    local fix_items={
      {name='iron-plate',count=100},
      {name='iron-gear-wheel',count=100},
      {name='repair-pack',count=20},
    }
    local entities = game.surfaces[1].find_entities_filtered{area = {{-100, -100}, {100, 100}}, name = "wpe_broken_lab"}
    if #entities == 0 then
      -- The lab has already been fixed
      global.done = true
      return
    end
    if check_container_for_items(entities[1],fix_items) then
      remove_items_from_container(entities[1],fix_items)
      local lab = entities[1].surface.create_entity({name='wpe_repaired_lab', position=entities[1].position, force = game.forces.player})
      lab.destructible=false
      lab.minable=false
      entities[1].destroy()
      global.done = true
    end
  end)
end


