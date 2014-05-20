# Inherit some common AOKP stuff
$(call inherit-product, vendor/aicp/configs/common.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/aicp/configs/cdma.mk)
$(call inherit-product, vendor/aicp/configs/vzw.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vs980/vs980.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_vzw/g2:4.2.2/JDQ39B/VS98011A.1378346052:user/release-keys PRIVATE_BUILD_DESC="g2_vzw-user 4.2.2 JDQ39B VS98011A.1378346052 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon
