return {
	{
		"Mofiqul/vscode.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- Set up the colors for VSCode Dark theme
			local bg = "#1E1E1E" -- Dark background color
			local bg_dark = "#252526" -- Darker background color
			local bg_highlight = "#333333" -- Highlighted background color
			local bg_search = "#4A4A4A" -- Background color for search matches
			local bg_visual = "#3A3A3A" -- Visual mode background color
			local fg = "#D4D4D4" -- Foreground color (light text)
			local fg_dark = "#A6A6A6" -- Darker foreground color
			local fg_gutter = "#808080" -- Color for line numbers or gutter text
			local border = "#3C3C3C" -- Border color for floating windows

			require("vscode").setup({
				style = "dark", -- Set the theme style to dark
				on_colors = function(colors)
					colors.bg = bg
					colors.bg_dark = bg_dark
					colors.bg_float = bg_dark
					colors.bg_highlight = bg_highlight
					colors.bg_popup = bg_dark
					colors.bg_search = bg_search
					colors.bg_sidebar = bg_dark
					colors.bg_statusline = bg_dark
					colors.bg_visual = bg_visual
					colors.border = border
					colors.fg = fg
					colors.fg_dark = fg_dark
					colors.fg_float = fg
					colors.fg_gutter = fg_gutter
					colors.fg_sidebar = fg_dark
				end,
			})

			-- Load the colorscheme here
			vim.cmd([[colorscheme vscode]])
		end,
	},
}
