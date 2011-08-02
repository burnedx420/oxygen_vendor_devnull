# Inherit AOSP device configuration for bravo.
$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Inherit some common devnull stuff.
$(call inherit-product, vendor/devnull/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/devnull/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := devnull_bravo
PRODUCT_BRAND := htc
PRODUCT_DEVICE := bravo
PRODUCT_MODEL := HTC Desire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bravo BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# A2SD support
PRODUCT_COPY_FILES += \
    vendor/devnull/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd

# FM packages
PRODUCT_PACKAGES += \
    FM \
    hcitool
