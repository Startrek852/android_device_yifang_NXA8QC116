# Inherit device configuration for NXA8QC116 .
$(call inherit-product, device/yifang/NXA8QC116/full_NXA8QC116.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common_tablet.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="NextBook/NXA8QC116/NXA8QC116:5.0/LRX21V/V1.0.6:user/release-keys" \
    PRIVATE_BUILD_DESC="nxm890bap_wm_64-user 5.0 LRX21V 20150518.190334 release-keys"

PRODUCT_NAME := omni_NXA8QC116
