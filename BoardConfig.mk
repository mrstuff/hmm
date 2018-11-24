# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from qcom-common
-include device/samsung/qcom/BoardConfig.mk

LOCAL_PATH := device/samsung/gta2swifi

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Arch
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/gta2swifi/include

# Use Snapdragon LLVM if available on build server
TARGET_USE_SDCLANG := true

# Kernel
TARGET_KERNEL_ARCH           := arm
BOARD_DTBTOOL_ARG            := -2

#BOARD_KERNEL_CMDLINE         := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci

BOARD_KERNEL_CMDLINE := sched_enable_hmp=1 console=null androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive androidboot.sec_atd.tty=/dev/ttyHSL0 sec_log=0x200000@0x85200000 sec_dbg=0x1ff000@0x85000000 androidboot.revision=5 androidboot.warranty_bit=1 androidboot.verifiedbootstate=orange cordon=acb23ba75db2e2d3220f7a8cb188728e connie=SM-T380_OPEN_SEA_8040f26b6354272801857aa9ecbd4670 sec_param_file_size=10485760 androidboot.im.param.offset=9437232 androidboot.me.param.offset=9437312 androidboot.sn.param.offset=9437392 androidboot.pr.param.offset=9437472 androidboot.sku.param.offset=9437552 androidboot.prototype.param.offset=9438412 androidboot.carrierid.param.offset=9438396 androidboot.sales.param.offset=9438400 androidboot.carrierid= androidboot.sales_code= androidboot.bootloader=T380DXU1ARB3 androidboot.boot_recovery=0 androidboot.hmac_mismatch=0 sec_debug.reset_reason=0x9 sec_dbg_ex_info=0x400@0x851ff000 pmic_info=3 ccic_info=1 androidboot.debug_level=0x4f4c sec_debug.enable=0 sec_debug.enable_user=0 msm_rtb.enable=0 androidboot.cp_debug_level=0x55FF sec_debug.enable_cp_debug=0 androidboot.cp_reserved_mem=off vmalloc=380M uart_dbg=0 fg_reset=0 androidboot.ucs_mode=0 androidboot.security_mode=1526595585 androidboot.emmc=true androidboot.serialno=c5514606ddf533dd androidboot.baseband=apq lcd_id=0xc6608 lcd_id2=0x0 hall_ic=0x0 mdss_mdp.panel=1:dsi:0:ss_dsi_panel_S6D7AA0X11_TV080WXM_WXGA:1:none:cfg:single_dsi

BOARD_KERNEL_BASE            := 0x81dfff00
BOARD_KERNEL_OFFSET          := 0x00008000
BOARD_RAMDISK_OFFSET         := 0x02000000
BOARD_KERNEL_TAGS_OFFSET     := 0x01e00000
BOARD_KERNEL_SEPARATED_DT    := true
BOARD_KERNEL_PAGESIZE        := 2048
BOARD_FLASH_BLOCK_SIZE       := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/gta2swifi/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# CMHW
BOARD_HARDWARE_CLASS += device/samsung/gta2swifi/cmhw

# Audio
TARGET_USES_QCOM_MM_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
#AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_MULTIPLE_TUNNEL := true
#AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
#USE_CUSTOM_AUDIO_POLICY := 1

# FM
AUDIO_FEATURE_ENABLED_FM := true
BOARD_HAVE_QCOM_FM := true

# Custom RIL class
BOARD_RIL_CLASS := ../../../device/samsung/gta2swifi/ril/
#TARGET_RIL_VARIANT := caf
USE_DEVICE_SPECIFIC_DATASERVICES := true

# PowerHAL
TARGET_POWERHAL_SET_INTERACTIVE_EXT := device/samsung/gta2swifi/power/power_ext.c
TARGET_POWERHAL_VARIANT := qcom
WITH_QC_PERF := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGER_ENABLE_SUSPEND := true

# Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := true

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_WLAN_DEVICE                := qcwcn
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_PROVIDES_WCNSS_QMI        := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_USES_WCNSS_CTRL           := true
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"

WLAN_MODULES:
	mkdir -p $(KERNEL_MODULES_OUT)/pronto
	mv $(KERNEL_MODULES_OUT)/wlan.ko $(KERNEL_MODULES_OUT)/pronto/pronto_wlan.ko
	ln -sf /system/lib/modules/pronto/pronto_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko

TARGET_KERNEL_MODULES += WLAN_MODULES

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 65

# Camera
#TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_NEEDS_TEXT_RELOCATIONS := true

# Workaround to avoid issues with legacy liblights on QCOM platforms
TARGET_PROVIDES_LIBLIGHT := true

# non-static liblog
BOARD_LIBCUTILS_NO_STATIC_LIBLOG := true

# Qcom
TARGET_USES_NEW_ION_API := true
HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE := true
TARGET_USES_QCOM_BSP := true
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_GLOBAL_CFLAGS += -DQCOM_BSP
BOARD_USES_QC_TIME_SERVICES := true

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED := true

# Media
TARGET_QCOM_MEDIA_VARIANT := caf
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Display
DEVICE_RESOLUTION := 1280x800
TARGET_USE_HDMI_AS_PRIMARY := false
TARGET_HAVE_HDMI_OUT := false
BOARD_USES_HDMI := true
TARGET_USES_OVERLAY := true
TARGET_USES_QCOM_DISPLAY_PP := true
BOARD_EGL_CFG := device/samsung/gta2swifi/configs/egl.cfg
TARGET_CONTINUOUS_SPLASH_ENABLED := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
BOARD_USES_HWCOMPOSER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 2048
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000

# Video
TARGET_HAVE_SIGNED_VENUS_FW := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# SELinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    $(LOCAL_PATH)/sepolicy

# Misc.
TARGET_SYSTEM_PROP := device/samsung/gta2swifi/system.prop

# TWRP
# Display
TW_THEME := landscape_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/devices/soc.0/1a00000.qcom\x2cmdss_mdp/qcom\x2cmdss_fb_primary.137/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NEW_ION_HEAP := true
TW_TARGET_USES_QCOM_BSP := true

# Keys
BOARD_HAS_NO_SELECT_BUTTON := true

# Storage
#RECOVERY_VARIANT := twrp
#TARGET_RECOVERY_FSTAB := device/samsung/gta2swifi/recovery/twrp.fstab
TARGET_RECOVERY_FSTAB := device/samsung/gta2swifi/rootdir/main/fstab.qcom
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_MTP_DEVICE := "/dev/mtp_usb"
BOARD_MTP_DEVICE := "/dev/mtp_usb"
RECOVERY_SDCARD_ON_DATA := true

# Misc.
BOARD_USES_MMC_UTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_NO_MISC_PARTITION := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_INCLUDE_CRYPTO := true
TW_NO_USB_STORAGE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_RECOVERY_SWIPE := true

# Dex
WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true
