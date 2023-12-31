local config = require("xcad-color.config")
local M = {}

---@param variant Variant|nil
function M.colorscheme(variant)
  config.extend({ variant = variant })

  vim.opt.termguicolors = true
  if vim.g.colors_name then
    vim.cmd("hi clear")
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "xcad-color"

  require("xcad-color.theme")._load(config.options)
end

function M.setup(options)
  config.extend(options)
end

return M
