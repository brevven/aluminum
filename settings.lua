local util = require("data-util");

data:extend({
  {
		type = "string-setting",
		name = util.me.name.."-recipe-bypass",
		setting_type = "startup",
		default_value = "",
    allow_blank = true,
	},
  {
		type = "bool-setting",
		name = util.me.name.."-list",
		setting_type = "startup",
    default_value = false,
	},
})
