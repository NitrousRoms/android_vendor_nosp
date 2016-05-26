# Copyright (C) 2016 Nitrous Project
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

# Include Pure NOSP tablet configuration
include vendor/nosp/configs/nosp_tablet.mk

# Inherit AOSP device configuration for flounder
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

# Override AOSP build properties
PRODUCT_NAME := nosp_flounder
PRODUCT_BRAND := google
PRODUCT_DEVICE := flounder
PRODUCT_MODEL := Nexus 9
PRODUCT_MANUFACTURER := htc

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=volantis \
    BUILD_FINGERPRINT=google/volantis/flounder:6.0.1/MOB30G/2723637:user/release-keys \
    PRIVATE_BUILD_DESC="volantis-user 6.0.1 MOB30G 2723637 release-keys"
