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

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH):kernel

$(call inherit-product-if-exists, vendor/yifang/NXA8QC116/NXA8QC116-vendor.mk)

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=160

PRODUCT_CHARACTERISTICS := tablet

# Bootanimation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    libtinyalsa \
    libtinycompress

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/asound.conf:system/etc/asound.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/route_criteria.conf:system/etc/route_criteria.conf

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

ADDITIONAL_DEFAULT_PROPERTIES += ro.sys.powerctl.no.shutdown=1

# Dalvik
PRODUCT_PROPERTY_OVERRIDES +=  \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=100m \
    dalvik.vm.heapsize=174m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    ro.dalvik.vm.isa.arm=x86

# GPS
ADDITIONAL_DEFAULT_PROPERTIES += ro.gnss.sv.status=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.spid.gps.pmm=disabled
    ro.spid.gps.tty=ttyMFD2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/gps.xml:system/etc/gps.xml

# Houdini (arm native bridge)
PRODUCT_PROPERTY_OVERRIDES += ro.enable.native.bridge.exec=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.dalvik.vm.native.bridge=libhoudini.so

# Idc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/atmel_mxt_ts.idc:system/usr/idc/atmel_mxt_ts.idc

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/baytrailaudio_Intel_MID_Audio_Jack.kl:system/usr/keylayout/baytrailaudio_Intel_MID_Audio_Jack.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/KEYPAD.kl:system/usr/keylayout/KEYPAD.kl \
    $(LOCAL_PATH)/keylayout/mrst_keypad.kl:system/usr/keylayout/mrst_keypad.kl

# Media
PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/mfx_omxil_core.conf:system/etc/mfx_omxil_core.conf \
    $(LOCAL_PATH)/media/video_isv_profile.xml:system/etc/video_isv_profile.xml \
    $(LOCAL_PATH)/media/wrs_omxil_components.list:system/etc/wrs_omxil_components.list \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# OpenGL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.nxm890bap_wm \
    init.avc.rc \
    init.bt.rc \
    init.bt.vendor.rc \
    init.common.rc \
    init.debug.rc \
    init.diag.rc \
    init.firmware.rc \
    init.gps.rc \
    init.net.eth0.sh \
    init.em_i8270.rc \
    init.platform.gengfx.rc \
    init.platform.usb.rc \
    init.recovery.nxm890bap_wm.rc \
    init.sensor.rc \
    init.watchdog.rc \
    init.watchdog.sh \
    init.wifi.rc \
    init.wifi.vendor.rc \
    init.zram.rc \
    initlogo.rle \
    intel_prop.cfg \
    rfkill_bt.sh \
    ueventd.em_i8270.rc

# Ramdisk binaries
PRODUCT_PACKAGES += \
    intel_fw_props \
    intel_prop \
    thermald \
    uefivar \
    adbd \
    healthd

# Thermal itux
ENABLE_ITUXD := true
PRODUCT_PACKAGES += \
    ituxd

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf
