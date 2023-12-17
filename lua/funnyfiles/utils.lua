local M = {}

---@param message string
---@return string User_input
function M.input(message)
	repeat
		---@type string
		User_input = vim.fn.input(message)
		if User_input ~= "" then
			print("Input should not be empty")
		end

	until User_input ~= ""

	return User_input
end

return M
