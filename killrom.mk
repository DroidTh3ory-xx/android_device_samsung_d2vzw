# Inherit device configuration for d2vzw.
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Call in the murdrer
$(call inherit-product-if-exists, vendor/nos/killrom/config/common.mk)
$(call inherit-product-if-exists, vendor/google/killrom/config/common.mk)

# Inherit some common CDMA stuff.
$(call inherit-product, vendor/nos/killrom/config/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="d2vzw-user 4.1.1 JRO03L I535VRBLK3 release-keys" PRIVATE_BUILD_DESC="Verizon/d2vzw/d2vzw:4.1.1/JRO03L/I535VRBLK3:user/release-keys"

PRODUCT_NAME := killrom_d2vzw
PRODUCT_DEVICE := d2vzw

TARGET_BOOTANIMATION_NAME := 720

PRODUCT_PROPERTY_OVERRIDES += \
    ro.killrom.version=KILLRSGS
