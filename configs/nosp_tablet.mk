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

include vendor/nosp/configs/aosp_fixes.mk
include vendor/nosp/configs/bootanimation.mk
include vendor/nosp/configs/nosp_main.mk
include vendor/nosp/configs/system_additions.mk
include vendor/nosp/configs/version.mk

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
