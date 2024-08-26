local M = {}
local core = require('pywal.core')
local highlights = require('pywal.highlights')

function M.setup ()
  local colors = core.get_colors()
  vim.opt.termguicolors = true
  highlights.highlight_all(colors)
  -- Treesitter context
  -- Configura el resaltado para TreesitterContext
  --vim.api.nvim_set_hl(0, "TreesitterContext", { bg = colores.color1 })
  -- Configura el resaltado para los números de línea en el contexto Treesitter
  vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { fg = colores.color4 })
  -- Configura el resaltado para el separador si es necesario
  vim.api.nvim_set_hl(0, "TreesitterContextSeparator", { fg = colores.grey, bg = colores.foreground })
  -- Para la última línea del contexto Treesitter
  vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true, sp = colores.foreground })
end

return M
