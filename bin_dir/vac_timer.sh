#!/usr/bin/env bash

(sleep 600 && notify-send "🕒 Переключение окончено" "Время вернуться к работе :)" && paplay /usr/share/sounds/freedesktop/stereo/complete.oga) &

notify-send "🕒 Переключение начато" "Через 10 минут прозвенит сигнал"

exit 0
