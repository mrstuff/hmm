
# Inherit from common
# TODO: add file
$(call inherit-product, device/samsung/j5-common/lineage.mk)

# TODO: add file
$(call inherit-product, device/samsung/j5lte/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j5lte
PRODUCT_NAME := lineage_gta2swifidx]
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T380
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

# TODO: what is this??
PRODUCT_GMS_CLIENTID_BASE := android-samsung
