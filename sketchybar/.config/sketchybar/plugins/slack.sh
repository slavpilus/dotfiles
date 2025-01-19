#!/usr/bin/env sh
source "$HOME/.config/sketchybar/colors.sh" # Loads all defined colors
STATUS_LABEL=$(lsappinfo info -only StatusLabel "Slack")
ICON="󰒱"
if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
    LABEL="${BASH_REMATCH[1]}"
    if [[ $LABEL == "" ]]; then
        ICON_COLOR=$AQUA
    elif [[ $LABEL == "•" ]]; then
        ICON_COLOR=$YELLOW
    elif [[ $LABEL =~ ^[0-9]+$ ]]; then
        ICON_COLOR=$RED
    else
        LABEL='-'
        ICON_COLOR=$GREY
    fi
else
  LABEL='-'
  ICON_COLOR=$GREY
fi

sketchybar --set $NAME icon=$ICON label="${LABEL}" icon.color=${ICON_COLOR}
