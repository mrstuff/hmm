
# Inherit from common
$(call inherit-product, device/samsung/gta2swifi/tabA.mk)

$(call inherit-product, device/samsung/gta2swifi/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta2swifi
PRODUCT_NAME := gta2swifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T380
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung
