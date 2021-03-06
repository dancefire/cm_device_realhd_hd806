USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/realhd/hd806/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# BOARD_KERNEL_CMDLINE := no_console_suspend
# BOARD_KERNEL_BASE := 0x80008000
# BOARD_KERNEL_PAGESIZE := 00000800

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := aml8726m
TARGET_BOOTLOADER_BOARD_NAME := c03ref

BOARD_EGL_CFG := device/realhd/hd806/egl.cfg

USE_OPENGL_RENDERER := true

BOARD_USE_SKIA_LCDTEXT := true

TARGET_RECOVERY_INITRC := device/realhd/hd806/recovery/recovery_init.rc
#TARGET_RECOVERY_PRE_COMMAND := ""
#TARGET_RECOVERY_PIXEL_FORMAT := ""
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/realhd/hd806/recovery/recovery_ui.c

#BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
#BOARD_UMS_2ND_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun1/file"
#BOARD_HAS_SMALL_RECOVERY = true

#TARGET_USERIMAGES_USE_EXT4 := true

# cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00800000 00100000 "aml_logo"
# mtd1: 00800000 00100000 "recovery"
# mtd2: 00800000 00100000 "boot"
# mtd3: 0c800000 00100000 "system"
# mtd4: 04000000 00100000 "cache"
# mtd5: 6d800000 00100000 "userdata"
# mtd6: 00002000 00001000 "ubootenv"
# mtd7: 00200000 00001000 "ubootwhole"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x6d800000
BOARD_FLASH_BLOCK_SIZE := 0x00100000

#TARGET_PROVIDES_INIT_RC := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
#WIFI_DRIVER_MODULE_ARG      := "firmware_path=/etc/sdio-g-cdc-full11n-reclaim-roml-wme-idsup.bin nvram_path=/etc/nvram.txt"
#WIFI_DRIVER_MODULE_NAME     := "dhd"
#WIFI_EXT_MODULE_PATH        := ""
#WIFI_EXT_MODULE_ARG         := ""
#WIFI_EXT_MODULE_NAME        := ""

#BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true

#COMMON_GLOBAL_CFLAGS += -DEGL_ALWAYS_ASYNC -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS
#BOARD_USE_LEGACY_TOUCHSCREEN := true
#BOARD_USE_LEGACY_TRACKPAD := true
#BOARD_USES_AUDIO_LEGACY := true
#TARGET_USES_OLD_LIBSENSORS_HAL := true
#TARGET_SENSORS_NO_OPEN_CHECK := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun%d/file"

BOARD_USES_AMLOGICPLAYER := true
TARGET_USES_OLD_HARDWARE_NAME := true


TARGET_PREBUILT_KERNEL := device/realhd/hd806/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

# U-Boot
BOARD_USES_UBOOT := true
#BOARD_USES_UBOOT_MULTIIMAGE := true
BOARD_UBOOT_ENTRY := 0x80008000
BOARD_UBOOT_LOAD := 0x80008000

