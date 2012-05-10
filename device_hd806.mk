$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/realhd/hd806/hd806-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/realhd/hd806/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/realhd/hd806/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/realhd/hd806/ueventd.hd806.rc:root/ueventd.hd806.rc \
    device/realhd/hd806/prebuilt/initlogo.480p.rle:root/initlogo.480p.rle \
    device/realhd/hd806/prebuilt/initlogo.720p.rle:root/initlogo.720p.rle \
    device/realhd/hd806/prebuilt/initlogo.1080p.rle:root/initlogo.1080p.rle

# Kernel Modules
PRODUCT_COPY_FILES += \
    device/realhd/hd806/prebuilt/boot/mali.ko:root/boot/mali.ko \
    device/realhd/hd806/prebuilt/boot/ump.ko:root/boot/ump.ko

# Recovery
PRODUCT_COPY_FILES += \
    device/realhd/hd806/prebuilt/remotecfg:recovery/root/sbin/remotecfg \
    device/realhd/hd806/prebuilt/set_display_mode.sh:recovery/root/sbin/set_display_mode.sh \
    device/realhd/hd806/ueventd.hd806.rc:recovery/root/ueventd.hd806.rc \
    device/realhd/hd806/prebuilt/initlogo.480p.rle:recovery/root/initlogo.480p.rle \
    device/realhd/hd806/prebuilt/initlogo.720p.rle:recovery/root/initlogo.720p.rle \
    device/realhd/hd806/prebuilt/initlogo.1080p.rle:recovery/root/initlogo.1080p.rle

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hd806
PRODUCT_DEVICE := hd806
PRODUCT_MANUFACTURER := RealHD
PRODUCT_BRAND := HDVision
PRODUCT_MODEL := HD806

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN
PRODUCT_DEFAULT_WIFI_CHANNELS := 14
