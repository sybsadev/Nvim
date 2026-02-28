vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua", "php", "svelte", "html", "css", "javascript", "typescript" },
	callback = function()
		vim.treesitter.start()
	end,
})
