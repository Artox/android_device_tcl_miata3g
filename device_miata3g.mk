$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/tcl/miata3g/miata3g-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/tcl/miata3g/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/tcl/miata3g/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

ifeq ($(TARGET_PREBUILT_DTIMAGE),)
	LOCAL_DTIMAGE := device/tcl/miata3g/dt.img
else
	LOCAL_DTIMAGE := $(TARGET_PREBUILT_DTIMAGE)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_DTIMAGE):dt.img

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_miata3g
PRODUCT_DEVICE := miata3g
