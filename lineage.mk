
$(call inherit-product, device/samsung/gta2swifi/device.mk)

# Inherit from common
$(call inherit-product, device/samsung/gta2swifi/lineage.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta2swifi
PRODUCT_NAME := lineage_gta2swifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T380
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

# TODO: what is this??
PRODUCT_GMS_CLIENTID_BASE := android-samsung

$(call inherit-product, device/xiaomi/riva/full_riva.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta2swifidx-user 7.1.1 NMF26X T380DXU1ARB3 release-keys"

# Set BUILD_FINGERPRINT variable
BUILD_FINGERPRINT := "samsung/gta2swifidx/gta2swifi:7.1.1/NMF26X/T380DXU1ARB3:user/release-keys"

