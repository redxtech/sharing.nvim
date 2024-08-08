local M = {}

local default_opts = {
	features = {
		'relnum',
		-- 'scrolling',
	},
}

function M.setup(opts)
	opts = vim.tbl_deep_extend('force', opts or {}, default_opts)

	vim.api.nvim_create_user_command('Sharing', function(info)
		local args = vim.split(info.args, ' ')
		local command = args[1] or 'toggle'

		if command == 'toggle' then
			for _, feature in ipairs(opts.features) do
				require('sharing.' .. feature).toggle()
			end
		elseif command == 'enable' then
			for _, feature in ipairs(opts.features) do
				require('sharing.' .. feature).enable()
			end
		elseif command == 'disable' then
			for _, feature in ipairs(opts.features) do
				require('sharing.' .. feature).disable()
			end
		end
	end, { nargs = 1 })
end

return M
