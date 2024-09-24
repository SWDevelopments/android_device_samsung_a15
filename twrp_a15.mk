# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk) -- only for 64bit phones

# Inherit from device
$(call inherit-product, device/samsung/a15/device.mk) -- path to main device makefile

# Inherit common product files.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_DEVICE := a15
PRODUCT_NAME := twrp_a15
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A155F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a15nsxx-user 12 SP1A.210812.016 A155FXXU3BXG4 release-keys"

BUILD_FINGERPRINT := samsung/a15nsxx/a15:12/SP1A.210812.016/A155FXXU3BXG4:user/release-keys
