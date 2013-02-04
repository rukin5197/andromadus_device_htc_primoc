# Inherit AOSP device configuration for primoc.
$(call inherit-product, device/htc/primoc/full_primoc.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

PRODUCT_NAME := cm_primoc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := primoc
PRODUCT_MODEL := One V
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_primoc BUILD_FINGERPRINT=virgin_mobile/htc_primoc/primoc:4.2.1/JOP40C/330937:user/release-keys PRIVATE_BUILD_DESC="4.2.1 JOP40C 330937 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=gannon5197 \
    ro.goo.rom=cm_$(TARGET_PRODUCT) \
    ro.goo.version=$(shell date +%s)
