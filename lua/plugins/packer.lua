local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim") -- packer manage itself

	use("lewis6991/impatient.nvim")

	use("andweeb/presence.nvim")

	use("sainnhe/gruvbox-material")

  use("norcalli/nvim-colorizer.lua") -- Add color

	use("mrshmllow/document-color.nvim") -- Add color

	use("windwp/nvim-autopairs") -- Autocomplete (), {}, []

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  })

  use('echasnovski/mini.move') -- Move lines around

	use({
		"nvim-treesitter/nvim-treesitter",
		requires = {
			"windwp/nvim-ts-autotag", -- Complete tags, functions and so fourth...
		},
		run = ":TSUpdate",
	})

	use({
		"neovim/nvim-lspconfig",
		requires = {
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lsp-signature-help", -- kinda help to functions
			"L3MON4D3/LuaSnip", -- snippet engine
			"saadparwaiz1/cmp_luasnip", -- snippet completions
			"rafamadriz/friendly-snippets", -- snippets for a lot of different languages
			"williamboman/nvim-lsp-installer",
			"aca/emmet-ls",
			"j-hui/fidget.nvim",
			"simrat39/rust-tools.nvim",
		},
	})

	use({ "mfussenegger/nvim-dap", requires = { "rcarriga/nvim-dap-ui" } })

	use("mhartington/formatter.nvim") -- Formate code

	use("numToStr/Comment.nvim")

	use("lewis6991/gitsigns.nvim")

	use({
		"nvim-telescope/telescope.nvim", -- Find files
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
		},
	})

	use("nvim-lualine/lualine.nvim")

	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})

  use("potamides/pantran.nvim") -- Window Translate

  use("ellisonleao/glow.nvim") -- Preview markdown

	if packer_bootstrap then
		require("packer").sync()
	end
end)
