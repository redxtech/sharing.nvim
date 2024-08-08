local M = {}

function M.setup(opts)
	opts = opts or {
		features = {
			'relnum',
			-- 'scrolling',
		},
	}

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
	end, {})
end

return M
