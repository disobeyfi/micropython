# Building micropython

This is for Disobey 2025 Badge firmware, the current build instructions
Notes:


```shell
# at repo root of micropython
export IDF_CCACHE_ENABLE=1
source tools/ci.sh
export IDF_VER=v5.2.2
export BOARD=ESP32_GENERIC_S3
export BOARD_VARIANT=DEVKITW2
export BAUD=115200 
export PORT=/dev/ttyUSB1 
ci_esp32_idf_setup
ci_esp32_build_common

export USER_C_MODULES="$(pwd)/ports/esp32/user-cmodules/ucrypto/micropython.cmake"

make ${MAKEOPTS} -C ports/esp32 BOARD=ESP32_GENERIC_S3

# To deploy
make ${MAKEOPTS} -C ports/esp32 BOARD=ESP32_GENERIC_S3 deploy MICROPY_HW_UART_REPL_BAUD=460800 deploy

make ${MAKEOPTS} -C ports/esp32 BOARD=ESP32_GENERIC_S3 monitor -D MICROPY_HW_UART_REPL_BAUD=460800

```