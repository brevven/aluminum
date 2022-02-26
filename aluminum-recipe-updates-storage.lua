local util = require("data-util");


-- Angel's storage
util.replace_ingredient("silo", "iron-plate", "aluminum-plate")
util.replace_ingredient("angels-warehouse", "iron-plate", "aluminum-plate")

-- Warehousing
util.replace_some_ingredient("warehouse-basic", "steel-plate", 100, "aluminum-plate", 100)
util.replace_some_ingredient("storehouse-basic", "steel-plate", 25, "aluminum-plate", 25)

-- AAI
util.replace_some_ingredient("aai-warehouse", "steel-plate", 100, "aluminum-plate", 100)
util.replace_some_ingredient("aai-storehouse", "steel-plate", 50, "aluminum-plate", 50)
util.replace_some_ingredient("aai-strongbox", "steel-plate", 12, "aluminum-plate", 12)
