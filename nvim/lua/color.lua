require('gruvbox').setup({
    disable_background = false
})

function ColorMyPencils(color) 
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils("gruvbox")

vim.g.gitgutter_enabled = 1
vim.g.gitgutter_map_keys = 0
