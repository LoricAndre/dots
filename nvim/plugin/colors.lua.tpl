#!/usr/bin/bash

cat > plugin/colors.lua << EOF
-- vim.api.nvim_cmd({cmd = 'colorscheme', args = {vim.g.colorscheme}}, {})
require 'base16-colorscheme'.setup {
  base00 = "#${colors_bg}",
  base01 = "#${colors_8}",
  base02 = "#${colors_8}",
  base03 = "#${colors_15}",
  base04 = "#${colors_15}",
  base05 = "#${colors_fg}",
  base06 = "#${colors_15}",
  base07 = "#${colors_8}",
  base08 = "#${colors_1}",
  base09 = "#${colors_10}",
  base0A = "#${colors_1}",
  base0B = "#${colors_4}",
  base0C = "#${colors_5}",
  base0D = "#${colors_6}",
  base0E = "#${colors_14}",
  base0F = "#${colors_1}",
}
EOF
