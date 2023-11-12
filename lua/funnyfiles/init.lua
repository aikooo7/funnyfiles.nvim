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

function M.DeleteFile()
  local file = vim.fn.input("File name: ")

  vim.loop.fs_unlink(file, function (err)
    if err then
      error("Error deleting file " .. file .. " with error: " .. err)
    else
      print("Successully deleted file " .. file)
    end
  end)

end

function M.CreateDir()
  local dir = vim.fn.input("Dir name: ")

  vim.loop.fs_mkdir(dir, 511, function (err)
    if err then
      error("Error creating directory " .. dir .. "with error: " .. err )
    else
      print("Successully created directory " .. dir)
    end

  end)

end

end

vim.api.nvim_create_user_command("CreateFile", M.CreateFile, {})
vim.api.nvim_create_user_command("DeleteFile", M.DeleteFile, {})
vim.api.nvim_create_user_command("CreateDir", M.CreateDir, {})

return M
