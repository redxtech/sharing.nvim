local M = {}

-- toggles relative line numbers
function M.toggle()
	-- if numbers enabled &
	vim.opt.relativenumber = not vim.opt.relativenumber
end

function M.enable()
	vim.opt.relativenumber = true
end

function M.disable()
	vim.opt.relativenumber = false
end

return M
