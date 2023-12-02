local M = {}

function M.input(message)
	repeat
		local user_input = vim.fn.input(message)
		if user_input ~= "" then
			print("Input should not be empty")
		end

	until user_input ~= ""

	return user_input
end

return M
