#!/bin/bash
west build -s app -b nice_nano_v2 -d build/cf-lily/left -- -DZMK_CONFIG=/projects/zmk-lily59-main/config/ -DSHIELD="lily58_left nice_view_adapter nice_view"
west build -s app -b nice_nano_v2 -d build/cf-lily/right -- -DZMK_CONFIG=/projects/zmk-lily59-main/config/ -DSHIELD="lily58_right nice_view_adapter nice_view"