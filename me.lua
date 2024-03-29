local me = {}

me.name = "bzaluminum"
me.list = {}


me.recipes = {"alumina", "aluminum-plate", "aluminum-cable", "acsr-cable", "spark-plug", "aluminum-2219", "aluminum-6061",
           "enriched-alumina",
           "enriched-aluminum",
           "molten-aluminum",
           "alumina-smelting-vulcanite",
           "aluminum-plate-smelting-vulcanite",
           "enriched-alumina-smelting-vulcanite",
           "ti-sapphire",
}

function me.mod_setting()
  return me.get_setting("bzmod-setting") == "yes"
end

function me.byproduct()
  return me.get_setting("bzaluminum-byproduct") and not me.get_setting("bz-no-byproduct")
end

function me.get_setting(name)
  if settings.startup[name] == nil then
    return nil
  end
  return settings.startup[name].value
end

me.bypass = {}
if me.get_setting(me.name.."-recipe-bypass") then 
  for recipe in string.gmatch(me.get_setting(me.name.."-recipe-bypass"), '[^",%s]+') do
    me.bypass[recipe] = true
  end
end

function me.add_modified(name) 
  if me.get_setting(me.name.."-list") then 
    table.insert(me.list, name)
  end
end


return me
