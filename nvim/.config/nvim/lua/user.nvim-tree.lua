-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local api = require("nvim-tree.api")
local function open_nvim_tree(data)
  -- buffer is a directory
  if vim.fn.isdirectory(data.file) ~= 1 then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  api.tree.open()
end

-- empty setup using defaults
require("nvim-tree").setup()

-- open nvim-tree for directories
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
