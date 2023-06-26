local lazy = require("lazy")

local plug = {
	"jiangmiao/auto-pairs",
	"lukas-reineke/indent-blankline.nvim",
	
	-- Temas
	{
		"sainnhe/sonokai",
		dependencies = {
			"marko-cerovac/material.nvim",
			"Mofiqul/dracula.nvim",
			"kvrohit/rasmus.nvim",
			"rafamadriz/neon",
			"tiagovla/tokyodark.nvim",
			"catppuccin/nvim",
			"folke/tokyonight.nvim"
		},
		config = function()
			require("catppuccin").setup({
				no_italic = true
			})
			vim.cmd "color catppuccin-mocha"
		end
	},
	
	-- Highlight
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup {
				highlight = { enable = true },
				autoindent = { enable = true }
			}
		end
	},
	
	-- Lsp
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/nvim-lsp-installer",
		},
		config = function()
			require("configs.lsp")
		end
	},
	
	-- Complementacion y snippets
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			{
				"L3MON4D3/LuaSnip",
				dependencies = {
					"saadparwaiz1/cmp_luasnip",
					"rafamadriz/friendly-snippets",
				}
			}
		},
		config = function()
			require("configs.cmp")
		end
	},
	
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end
	},
	
	-- Css and html
	{
		"norcalli/nvim-colorizer.lua",
		dependencies = {
			"alvan/vim-closetag"
		},
		config = function()
			require("colorizer").setup(nil, {
				RRGGBBA = true,
				hsl_fn = true,
				rgb_fn = true,
				css = true,
				css_fn = true
			})
		end
	},
	
	-- Árbol de archivo
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
		}
	},
	
	{
		"RishabhRD/nvim-cheat.sh",
		dependencies = {
			"RishabhRD/popfix"
		}
	},
	
	{
		"akinsho/bufferline.nvim",
		config = function()
			local bufferline = require('bufferline')
			bufferline.setup({
				options = {
					style_preset = bufferline.style_preset.no_italic,
					-- or you can combine these e.g.
					style_preset = {
						bufferline.style_preset.no_italic,
						bufferline.style_preset.no_bold
					},
				}
			})
		end
	},
	
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup()
		end
	},
	
	-- Base de datos
	{
		"tpope/vim-dadbod",
		dependencies = { "kristijanhusak/vim-dadbod-ui" }
	}
}

lazy.setup(plug)
