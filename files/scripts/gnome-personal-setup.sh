#!/bin/sh
# XF86Keyboard => F11
# gsettings set org.gnome.desktop.input-sources xkb-options "[]"
# gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space', 'XF86Keyboard']"

# Change language input keyboard by caplock
gsettings set org.gnome.desktop.input-sources xkb-options "['grp:caps_toggles']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['XF86Keyboard']"

# Hold repeat key faster (Useful for vim)
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30

# Disable animation
gsettings set org.gnome.desktop.interface enable-animations false
