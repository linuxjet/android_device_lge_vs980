# boot
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# device
$(call inherit-product, device/lge/vs980/vs980.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# product
PRODUCT_DEVICE := vs980
PRODUCT_BRAND := LGE
PRODUCT_NAME := liquid_vs980
PRODUCT_MODEL := LG-VS980
PRODUCT_MANUFACTURER := lge
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.vs980.$(shell date +%m%d%y).$(shell date +%H%M%S)

PRODUCT_PACKAGES += Torch

PRODUCT_BUILD_PROP_OVERRIDES += \
PRIVATE_BUILD_DESC="g2_vzw-user 4.2.2 JDQ39B VS98011A.1378346052 release-keys" \
BUILD_FINGERPRINT="lge/g2_vzw/g2:4.2.2/JDQ39B/VS98011A.1378346052:user/release-keys"
    
PRODUCT_GMS_CLIENTID_BASE := android-verizon
