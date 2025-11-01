return {
	"Shatur/neovim-ayu",
	priority = 1000,
	config = function()
		require("ayu").setup({
			terminal = false,
		})
		vim.cmd("colorscheme ayu")
		-- Set transparent background
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
				-- Ensure additional groups inherit transparency
				vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
				vim.cmd("highlight Folded guibg=NONE ctermbg=NONE")
				vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
				vim.cmd("highlight SpecialKey guibg=NONE ctermbg=NONE")
				vim.cmd("highlight VertSplit guibg=NONE ctermbg=NONE")
				vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
				vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")

				vim.cmd("highlight CursorLine gui=underline guibg=NONE guifg=NONE")

				-- Make line numbers white
				vim.cmd("highlight LineNr guifg=#FFFFFF")
				vim.cmd("highlight CursorLineNr guifg=#FFFFFF guibg=NONE")
			end,
		})
	end,
}
