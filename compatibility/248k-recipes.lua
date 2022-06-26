
if mods["248k"] then
data:extend({

    {
        name = 'el_purify_aluminum_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_purifier_category',
        main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="water", amount=50},
            {type="item", name="aluminum-ore", amount=10}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=50},
            {type="item", name="el_materials_pure_aluminum", amount=5},
        },
        energy_required = 1,
        always_show_made_in = true,
        icons = {
            {
                icon = "__248k__/ressources/fluids/el_dirty_water.png", icon_size = 64,
            },
            { 
                icon = "__bzaluminum__/graphics/icons/aluminum-ore.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -8}
            },
        } 
    },
})
end
