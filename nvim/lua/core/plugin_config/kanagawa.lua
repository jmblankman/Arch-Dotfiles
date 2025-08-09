vim.o.termguicolors = true

require('kanagawa').setup({
	colors = {
		palette = {
			-- change all usages of these colors
			-- below changes the telescope ">" and "Visual Line" label
			roninYellow = "#C8C093" 

		},
	},
})

vim.cmd [[ colorscheme kanagawa-dragon ]]
