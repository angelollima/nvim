local background = vim.opt.background:get()
local configuration = vim.fn["gruvbox_material#get_configuration"]()
local palette = vim.fn["gruvbox_material#get_palette"](background, configuration.palette, configuration.colors_override)

local colors = {
  black  = '#080808',
  white  = '#dadada',
}

theme = {
	normal = {
		a = { bg = colors.black, fg = palette.orange[1] ,gui = "bold" },
		b = { bg = colors.black, fg = palette.grey2[1] },
		c = { bg = palette.orange[1], fg = palette.grey2[1] },
		x = { bg = colors.black, fg = colors.white, gui = "bold" },
		y = { bg = palette.grey2[1], fg = colors.white },
		z = { bg = palette.grey2[1], fg = colors.white },
	},
	insert = {
		a = { bg = palette.green[1], fg = palette.bg0[1], gui = "bold" },
	},
	visual = {
		a = { bg = palette.bg_red[1], fg = palette.bg0[1], gui = "bold" },
	},
	replace = {
		a = { bg = palette.bg_yellow[1], fg = palette.bg0[1], gui = "bold" },
	},
	command = {
		a = { bg = palette.blue[1], fg = palette.bg0[1], gui = "bold" },
	},
	terminal = {
		a = { bg = palette.purple[1], fg = palette.bg0[1], gui = "bold" },
	},
	inactive = {
		a = { bg = palette.bg_statusline2[1], fg = palette.grey2[1] },
	},
}

local settings = {
	lualine_a = {
		{
			"mode",
			fmt = function(str)
				return str:sub(1, 1) -- Delete the sub function to receive the full string
			end,
		},
	},
	lualine_b = {
		{
			"branch",
			color = { fg = palette.purple[1], gui = "bold" },
		},
		{
			"diff",
			colored = true,
			diff_color = {
				added = { fg = palette.green[1], gui = "bold" },
				modified = { fg = palette.yellow[1], gui = "bold" },
				removed = { fg = palette.red[1], gui = "bold" },
			},
			symbols = { added = "+", modified = "~", removed = "-" },
		},
		{
			"diagnostics",
			symbols = { error = "▎", warn = "▎", info = "▎", hint = "▎" },
			diagnostics_color = {
				error = { fg = palette.red[1], gui = "bold,italic" },
				warn = { fg = palette.yellow[1], gui = "bold,italic" },
				info = { fg = palette.blue[1], gui = "bold,italic" },
				hint = { fg = palette.aqua[1], gui = "bold,italic" },
			},
		},
	},
	lualine_c = {
		{
			"buffers",
			hide_filename_extension = false,
			show_filename_only = false,
			show_modified_status = true,
			buffers_color = {
				active = { fg = colors.black, gui = "bold" },
				inactive = { fg = colors.white, gui = "italic" },
			},
		},
	},
	lualine_x = { "%l:%c  ▎ %L" },
	lualine_y = {},
	lualine_z = {},
}

require("lualine").setup({
	options = {
		theme = theme,
		section_separators = "",
		component_separators = "",
		disabled_filetypes = {
			"NvimTree",
			"dap-repl",
			"dapui_console",
			"dapui_breakpoints",
			"dapui_scopes",
			"dapui_stacks",
			"dapui_watches",
		},
	},
	sections = settings,
	inactive_sections = settings,
})
