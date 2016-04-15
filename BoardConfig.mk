#
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

# Architecture
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_ABI := x86
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := baytrail
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := baytrail

# Kernel
BOARD_KERNEL_CMDLINE := loglevel=0 androidboot.bootmedia=sdcard androidboot.hardware=nxm890bap_wm watchdog.watchdog_thresh=60 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 androidboot.lcd=1 oops=panic panic=40 i915.i915_enable_cmd_parser=0 vmalloc=172M debug_locks=0 bootboost=1 slub_max_order=2 vga=current i915.modeset=1 drm.vblankoffdelay=1 acpi_backlight=vendorr androidboot.selinux=permissive
TARGET_PREBUILT_KERNEL := device/yifang/NXA8QC116/kernel

PREBUILT_KERNEL_MODULES:
	cp -R device/yifang/NXA8QC116/rootdir/modules/* $(KERNEL_MODULES_OUT)/

TARGET_KERNEL_MODULES := PREBUILT_KERNEL_MODULES

# Adb
BOARD_FUNCTIONFS_HAS_SS_COUNT := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINY_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_RTL := true
BOARD_BLUEDROID_VENDOR_CONF := device/hp/bowser/bluetooth/vnd_NXA8QC116.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/yifang/NXA8QC116/bluetooth

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Graphics
USE_OPENGL_RENDERER := true
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000

# Houdini: enable ARM codegen for x86
BUILD_ARM_FOR_X86 := true

# Init
TARGET_IGNORE_RO_BOOT_SERIALNO := true

# Intel library for GPU accelerated Renderscript
#OVERRIDE_RS_DRIVER := libRSDriver_intel7.so

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 100663296
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1400897536
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13767764992
BOARD_FLASH_BLOCK_SIZE := 2048

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_FSTAB := device/yifang/NXA8QC116/rootdir/etc/fstab.nxm890bap_wm
TARGET_USERIMAGES_USE_EXT4 := true
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true 
TW_EXCLUDE_SUPERSU := true
TW_HAVE_X86_ACCELERATED_PIXELFLINGER := true
TW_BACKUP_DATA_MEDIA := true

#BOARD_SEPOLICY_DIRS +=\
#    device/intel/baytrail/sepolicy
#BOARD_SEPOLICY_REPLACE := \
#     domain.te
#BOARD_SEPOLICY_UNION +=\
#    adbd.te \
#    apk_logfs.te \
#    bcu_cpufreqrel.te \
#    bluetooth.te \
#    coreu.te \
#    crashlogd.te \
#    device.te \
#    dhcp.te \
#    drmserver.te \
#    droidboot.te \
#    dumpstate.te \
#    ecryptfs.te \
#    fg_algo_iface.te \
#    fg_conf.te \
#    file_contexts \
#    file.te \
#    fs_use \
#    genfs_contexts \
#    gpsd.te \
#    hdcpd.te \
#    healthd.te \
#    init_shell.te \
#    init.te \
#    intel_fw_props.te \
#    isolated_app.te \
#    kernel.te \
#    keystore.te \
#    mediaserver.te \
#    mmgr.te \
#    usb3gmonitor.te \
#    netd.te \
#    nvm_server.te \
#    platform_app.te \
#    radio.te \
#    rild.te \
#    seapp_contexts \
#    sensorhubd.te \
#    service.te \
#    service_contexts \
#    servicemanager.te \
#    shell.te \
#    surfaceflinger.te \
#    system_app.te \
#    system_server.te \
#    thermal.te \
#    ueventd.te \
#    untrusted_app.te \
#    vdc.te \
#    vold.te \
#    watchdogd.te \
#    wlan_prov.te \
#    wpa.te \
#    zygote.te

# Wifi
BOARD_WLAN_DEVICE                := rtl
BOARD_HAVE_REALTEK_WIFI          := true
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_rtl
WIFI_DRIVER_FW_PATH_PARAM        := ""
WIFI_DRIVER_FW_PATH_AP           := ""
WIFI_DRIVER_FW_PATH_STA          := ""


