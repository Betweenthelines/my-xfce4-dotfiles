#!/usr/bin/env bash

dir="$HOME/.config/rofi"
theme='goblin'

rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
