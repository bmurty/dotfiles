#!/usr/bin/env bash

# Ubuntu Gnome tweaks

## Set desktop background to solid black

gsettings set org.gnome.desktop.background picture-uri none
gsettings set org.gnome.desktop.background picture-uri-dark none
gsettings set org.gnome.desktop.background primary-color '#000000'

## Dash to Dock extension

### Set Dock to be solid black with no transparency

gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock customize-alphas true
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 1.0
gsettings set org.gnome.shell.extensions.dash-to-dock custom-background-color true
gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#000000'

### Set Dock position and sizing

gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'LEFT'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true
gsettings set org.gnome.shell.extensions.dash-to-dock apply-glossy-effect false
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items false
gsettings set org.gnome.shell.extensions.dash-to-dock dance-urgent-applications false
gsettings set org.gnome.shell.extensions.dash-to-dock dance-urgent-applications false
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 34
gsettings set org.gnome.shell.extensions.dash-to-dock icon-size-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock disable-overview-on-startup true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock show-icons-emblems false
gsettings set org.gnome.shell.extensions.dash-to-dock show-icons-notifications-counter false
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-dominant-color true
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock default-windows-preview-to-open true

## Extension: Hide Top Bar - https://extensions.gnome.org/extension/545/hide-top-bar/

gsettings set org.gnome.shell.extensions.hidetopbar animation-time-autohide 0
gsettings set org.gnome.shell.extensions.hidetopbar animation-time-overview 2.7755575615628914e-17
gsettings set org.gnome.shell.extensions.hidetopbar enable-active-window false
gsettings set org.gnome.shell.extensions.hidetopbar enable-intellihide false
gsettings set org.gnome.shell.extensions.hidetopbar mouse-sensitive true
gsettings set org.gnome.shell.extensions.hidetopbar mouse-sensitive-fullscreen-window false
gsettings set org.gnome.shell.extensions.hidetopbar shortcut-delay 1.3877787807814457e-16

## Extension: Rounded Window Corners Reborn - https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/

gsettings set org.gnome.shell.extensions.rounded-window-corners-reborn border-width 0
gsettings set org.gnome.shell.extensions.rounded-window-corners-reborn skip-libadwaita-app false
gsettings set org.gnome.shell.extensions.rounded-window-corners-reborn global-rounded-corner-settings "[{'padding': <{'left': uint32 0, 'right': 0, 'top': 0, 'bottom': 0}>, 'keepRoundedCorners': <{'maximized': false, 'fullscreen': false}>, 'borderRadius': <uint32 0>, 'smoothing': <0.0>, 'borderColor': <(0.5, 0.5, 0.5, 1.0)>, 'enabled': <true>}]"
