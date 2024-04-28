-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "kanagawa",

	hl_override = {
		comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

return M

