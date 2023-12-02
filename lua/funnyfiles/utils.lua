local M = {}

function M.input(message)
		local user_input = vim.fn.input(message)

	return user_input
end

return M
