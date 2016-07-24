# Release name
PRODUCT_RELEASE_NAME := miata3g

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/tcl/miata3g/device_miata3g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := miata3g
PRODUCT_NAME := cm_miata3g
PRODUCT_BRAND := tcl
PRODUCT_MODEL := miata3g
PRODUCT_MANUFACTURER := tcl
