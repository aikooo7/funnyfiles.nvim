local M = {}

function M.CreateFile()
  local file = vim.fn.input("File name: ")

  vim.loop.fs_open(file, "w", 438, function (err)
    if err then
      error("Error creating file " .. file " with error: " .. err)
    else
      print("Successully created file " .. file)
    end
  end)
end

end

vim.api.nvim_create_user_command("CreateFile", M.CreateFile, {})

return M
