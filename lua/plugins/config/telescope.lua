local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
    mappings = {
      i = {
        ["<C-s>"] = actions.select_horizontal,
        ["<C-a>"] = actions.select_vertical,
      },
      n = {
        ["<C-s>"] = actions.select_horizontal,
        ["<C-a>"] = actions.select_vertical,
      },
    },
		prompt_prefix = "● ",
		selection_caret = "  ",
		entry_prefix = "  ",
	},
})
