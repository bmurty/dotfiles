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

## Transparent Top Bar extension - https://extensions.gnome.org/extension/3960/transparent-top-bar-adjustable-transparency/

gsettings set com.ftpix.transparentbar dark-full-screen false
gsettings set com.ftpix.transparentbar transparency 1
gsettings set com.ftpix.transparentbar disable-text-shadow true

