local M = {}

-- toggles relative line numbers
function M.toggle()
	-- if numbers enabled &
	vim.opt.relativenumber = not vim.opt.relativenumber

	if not vim.opt.relativenumber then
		vim.cmd('redraw')
	end
end

function M.enable()
	vim.opt.relativenumber = true
end

function M.disable()
	vim.opt.relativenumber = false
	vim.cmd('redraw')
end

return M
