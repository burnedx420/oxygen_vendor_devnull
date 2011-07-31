# Inherit AOSP device configuration for crespo4g.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit some common devnull stuff.
$(call inherit-product, vendor/devnull/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := devnull_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_ID=GRJ90 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/sojus/crespo4g:2.3.5/GRJ90/138666:user/release-keys PRIVATE_BUILD_DESC="sojus-user 2.3.5 GRJ90 138666 release-keys" BUILD_NUMBER=138666
