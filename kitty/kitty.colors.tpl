#!/usr/bin/bash

cat > kitty.colors << EOF
background #${color_bg}
foreground #${color_fg}
cursor #${color_11}
color0 #${color_0}
color1 #${color_1}
color2 #${color_2}
color3 #${color_3}
color4 #${color_4}
color5 #${color_5}
color6 #${color_6}
color7 #${color_7}
color8 #${color_8}
color9 #${color_9}
color10 #${color_10}
color11 #${color_11}
color12 #${color_12}
color13 #${color_13}
color14 #${color_14}
color15 #${color_15}
selection_background #${color_fg}
selection_foreground #${color_bg}
EOF
