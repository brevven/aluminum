data:extend({
  {
		type = "string-setting",
		name = "bzaluminum-recipe-bypass",
		setting_type = "startup",
		default_value = "",
    allow_blank = true,
	},
  {
		type = "bool-setting",
		name = "bzaluminum-byproduct",
		setting_type = "startup",
    default_value = true,
	},
  {
		type = "bool-setting",
		name = "bzaluminum-list",
		setting_type = "startup",
    default_value = false,
	},
  {
		type = "bool-setting",
		name = "bzaluminum-starting-items",
		setting_type = "runtime-global",
    default_value = true,
	},
})
