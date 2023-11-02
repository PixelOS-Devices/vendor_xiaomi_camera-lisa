#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/camera/configs/permissions/default-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-miuicamera.xml \
    vendor/xiaomi/camera/configs/permissions/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    vendor/xiaomi/camera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.miui.notch=1 \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.aperture,org.lineageos.aperture.dev

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/xiaomi/camera/sepolicy/vendor

# Shims
PRODUCT_PACKAGES += \
    libgui_shim_miuicamera

$(call inherit-product, vendor/xiaomi/camera/camera-vendor.mk)
