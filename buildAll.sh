#!/bin/bash

mkdir -p firmware

west build -s app -b nice_nano_v2 -d build/cf-lily/left -- -DZMK_CONFIG=$(realpath ./../zmk-lily59-main/config) -DSHIELD="lily58_left nice_view_adapter nice_view" &&
    cp build/cf-lily/left/zephyr/zmk.uf2 firmware/cf_lily_left_display.uf2

west build -s app -b nice_nano_v2 -d build/cf-lily/right -- -DZMK_CONFIG=$(realpath ./../zmk-lily59-main/config) -DSHIELD="lily58_right nice_view_adapter nice_view" &&
    cp build/cf-lily/right/zephyr/zmk.uf2 firmware/cf_lily_right_display.uf2
