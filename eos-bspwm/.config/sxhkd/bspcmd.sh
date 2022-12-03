#!/bin/bash

CMD=${1:-help}; shift

help() {
    echo "Available commands:"
    echo "  * unhide - select and unhide window"
}

unhide() {
    action=${1:-list}
    case $action in
        "list")
            selection=`for id in $(bspc query -N -n .hidden); do
                title=$(xtitle $id)
                [[ -n "$title" ]] && echo $id $title
            done | rofi -dmenu -i -p "Hidden windows" | cut -f1 -d' '`
            
            [[ -z "$selection" ]] && exit 1

            bspc node $selection -g hidden=off
            ;;
    esac
}

case $CMD in
    "help")
        help
        ;;
    "unhide")
        unhide $1
        ;;
    *)
        help
        ;;
esac
