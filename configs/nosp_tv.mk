# Copyright (C) 2015 The Pure Nexus Project
# Copyright (C) 2016 The Nitrous Project
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

include vendor/nosp/configs/system_additions.mk
include vendor/nosp/configs/version.mk

# Include TV overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/nosp/overlay/tv

# Key layout files
PRODUCT_COPY_FILES += \
    vendor/nosp/prebuilt/usr/keylayout/AliTV_Remote_V1_Airmouse.kl:system/usr/keylayout/AliTV_Remote_V1_Airmouse.kl \
    vendor/nosp/prebuilt/usr/idc/AliTV_Remote_V1_Airmouse.idc:system/usr/idc/AliTV_Remote_V1_Airmouse.idc \

# Optional Packages
PRODUCT_PACKAGES += \
    Browser \
    Busybox \
    LockClock

# SuperSU FTW
PRODUCT_COPY_FILES += \
    vendor/nosp/prebuilt/supersu/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/nosp/prebuilt/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.wifi-watchlist=GoogleGuest

# Include our custom apps
PRODUCT_PACKAGES += \
    AppDrawer