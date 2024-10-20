set(SDKCONFIG_DEFAULTS
    ${SDKCONFIG_DEFAULTS}
    boards/sdkconfig.240mhz
    boards/sdkconfig.spiram_devkitw2
    boards/sdkconfig.spiram_devkitw2_disobey_2025_ota
)



list(APPEND MICROPY_DEF_BOARD
    MICROPY_HW_BOARD_NAME="DevKitC-1 ESP32S3 module Wroom2"
)
