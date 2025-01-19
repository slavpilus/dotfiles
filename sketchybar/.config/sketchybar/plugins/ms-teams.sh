#!/usr/bin/env sh
source "$HOME/.config/sketchybar/colors.sh" # Loads all defined colors
STATUS_LABEL=$(lsappinfo info -only StatusLabel "Microsoft Teams")
ICON="󰊻"
if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
  LABEL="${BASH_REMATCH[1]}"
  if [[ $LABEL == "" ]]; then
    ICON_COLOR=$AQUA
  elif [[ $LABEL =~ ^[0-9]+$ ]]; then
    ICON_COLOR=$ORANGE
  else
    ICON_COLOR=$GREY
    LABEL='-'
  fi
else
  ICON_COLOR=$GREY
  LABEL='-'
fi

sketchybar --set $NAME icon=$ICON label="${LABEL}" icon.color=${ICON_COLOR}
