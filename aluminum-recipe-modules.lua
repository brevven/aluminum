-- Enable prod modules for all aluminum plate and ore recipes

recipes = {"alumina", "aluminum-plate", "aluminum-cable", "acsr-cable", "spark-plug", "aluminum-2219", "aluminum-6061"}
if mods["Krastorio2"] then
  table.insert(recipes, "enriched-alumina")
  table.insert(recipes, "enriched-aluminum")
end
if mods["space-exploration"] then
  table.insert(recipes, "alumina-smelting-vulcanite")
  table.insert(recipes, "aluminum-plate-smelting-vulcanite")
  if mods["Krastorio2"] then
    table.insert(recipes, "enriched-alumina-smelting-vulcanite")
  end
end

for i, recipe in pairs(recipes) do
  if data.raw.recipe[recipe] then
    for j, module in pairs(data.raw.module) do
      if module.effect then
        for effect_name, effect in pairs(module.effect) do
          if effect_name == "productivity" and effect.bonus > 0 and module.limitation and #module.limitation > 0 then
            table.insert(module.limitation, recipe)
          end
        end
      end
    end
  end
end
