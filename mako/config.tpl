#!/bin/bash

cat > config << EOF
font=monospace 10
background-color=#${color_bg}
text-color=#${color_fg}
border-color=#${color_5}
progress-color=#${color_9}
default-timeout=1000
EOF
