DEVICE_PATH := device/samsung/a15

# Release name
PRODUCT_RELEASE_NAME := a15

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := a15
PRODUCT_NAME := twrp_a15
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A155F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a15nsxx-user 12 SP1A.210812.016 A155FXXU3BXG4 release-keys"

BUILD_FINGERPRINT := samsung/a15nsxx/a15:12/SP1A.210812.016/A155FXXU3BXG4:user/release-keys
