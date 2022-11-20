#!/usr/bin/bash

cat > plugin/colors.lua << EOF
-- vim.api.nvim_cmd({cmd = 'colorscheme', args = {vim.g.colorscheme}}, {})
require 'base16-colorscheme'.setup {
  base00 = "#${color_bg}",
  base01 = "#${color_8}",
  base02 = "#${color_8}",
  base03 = "#${color_15}",
  base04 = "#${color_15}",
  base05 = "#${color_fg}",
  base06 = "#${color_15}",
  base07 = "#${color_8}",
  base08 = "#${color_1}",
  base09 = "#${color_10}",
  base0A = "#${color_1}",
  base0B = "#${color_4}",
  base0C = "#${color_5}",
  base0D = "#${color_6}",
  base0E = "#${color_14}",
  base0F = "#${color_1}",
}
EOF
