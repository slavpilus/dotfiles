#!/usr/bin/env sh
STATUS_LABEL=$(lsappinfo info -only StatusLabel "Microsoft Teams")
ICON="󰊻"
if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
    LABEL="${BASH_REMATCH[1]}"
    if [[ $LABEL == "" ]]; then
        ICON_COLOR="0xffa6da95"
    elif [[ $LABEL =~ ^[0-9]+$ ]]; then
        ICON_COLOR="0xffed8796"
    else
        ICON_COLOR="0xffabb2b9"
        LABEL='-'
    fi
else
    ICON_COLOR="0xffabb2b9"
    LABEL='-'
fi

sketchybar --set $NAME icon=$ICON label="${LABEL}" icon.color=${ICON_COLOR}
