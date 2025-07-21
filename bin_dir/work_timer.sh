#!/usr/bin/env bash

(sleep 1800 && notify-send "🕒 Работа окончена" "Время отдыха" && paplay /usr/share/sounds/freedesktop/stereo/complete.oga) &

notify-send "🕒 Работа начата" "Даётся 30 минут"

exit 0
