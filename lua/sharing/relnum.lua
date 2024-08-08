local M = {}

-- toggles relative line numbers
function M.toggle()
	vim.cmd('set relativenumber!')
end

function M.enable()
	vim.cmd('set relativenumber')
end

function M.disable()
	vim.cmd('set norelativenumber')
	vim.cmd('redraw')
end

return M
