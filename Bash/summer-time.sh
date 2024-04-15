#!/bin/bash

# Скрипт обратного отсчета времени до начала лета
# Определим текущую дату и дату начала лета

current_date=$(date +%s)
summer_start_date=$(date -d "June 1" +%s)

# Рассчитаем разницу во времени до начала лета
time_diff=$((summer_start_date - current_date))

# Переведем разницу во времени в дни, часы, минуты и секунды
days=$((time_diff / 86400))
hours=$(( (time_diff % 86400) / 3600 ))
minutes=$(( (time_diff % 3600) / 60 ))
seconds=$((time_diff % 60))

# Выведем текущую дату и обратный отсчет до начала лета

current_date=$(date "+%d %B %Y")
echo "Текущая дата: $current_date"

echo "До начала лета осталось:"
echo "$days дней $hours часов $minutes минут $seconds секунд"
