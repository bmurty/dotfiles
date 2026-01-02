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

## Extension: Rounded Window Corners Reborn - https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/

gsettings set org.gnome.shell.extensions.rounded-window-corners-reborn border-width 0
gsettings set org.gnome.shell.extensions.rounded-window-corners-reborn skip-libadwaita-app false
gsettings set org.gnome.shell.extensions.rounded-window-corners-reborn global-rounded-corner-settings "[{'padding': <{'left': uint32 0, 'right': 0, 'top': 0, 'bottom': 0}>, 'keepRoundedCorners': <{'maximized': false, 'fullscreen': false}>, 'borderRadius': <uint32 0>, 'smoothing': <0.0>, 'borderColor': <(0.5, 0.5, 0.5, 1.0)>, 'enabled': <true>}]"

## Extension: Dash to Panel - https://extensions.gnome.org/extension/1160/dash-to-panel/

gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-extent {'RIPPLE': 4, 'PLANK': 4, 'SIMPLE': 1}
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-margin 4
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-padding 4
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-style 'NORMAL'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-dominant false
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-override false
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-unfocused-different false
gsettings set org.gnome.shell.extensions.dash-to-panel dot-position 'LEFT'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-size 0
gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-focused 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-unfocused 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-panel extension-version 72
gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight false
gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight-dominant true
gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight-opacity 100
gsettings set org.gnome.shell.extensions.dash-to-panel hide-overview-on-startup true
gsettings set org.gnome.shell.extensions.dash-to-panel highlight-appicon-hover-background-color 'rgb(26,95,180)'
gsettings set org.gnome.shell.extensions.dash-to-panel highlight-appicon-hover-border-radius 0
gsettings set org.gnome.shell.extensions.dash-to-panel hotkeys-overlay-combo 'TEMPORARILY'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-anchors '{"LHC-0000000000000":"MIDDLE"}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-element-positions '{"LHC-0000000000000":[{"element":"showAppsButton","visible":true,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":false,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"}]}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-lengths '{}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-positions '{"LHC-0000000000000":"LEFT"}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-side-margins 0
gsettings set org.gnome.shell.extensions.dash-to-panel panel-side-padding 8
gsettings set org.gnome.shell.extensions.dash-to-panel panel-sizes '{"LHC-0000000000000":64}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-top-bottom-padding 0
gsettings set org.gnome.shell.extensions.dash-to-panel prefs-opened true
gsettings set org.gnome.shell.extensions.dash-to-panel scroll-icon-action 'NOTHING'
gsettings set org.gnome.shell.extensions.dash-to-panel scroll-panel-action 'NOTHING'
gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-icon-file ''
gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-icon-side-padding 0
gsettings set org.gnome.shell.extensions.dash-to-panel trans-bg-color '#000000'
gsettings set org.gnome.shell.extensions.dash-to-panel trans-panel-opacity 1.0
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-bg true
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-opacity true
gsettings set org.gnome.shell.extensions.dash-to-panel tray-size 0
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-title-position 'TOP'
