#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gta2swifi/gta2swifi-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gta2swifi/gta2swifi-common.mk)

LOCAL_PATH := device/samsung/gta2swifi

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# TODO: add overlays folder
# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
