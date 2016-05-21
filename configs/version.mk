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

# Versioning System
# NOSP version.
PRODUCT_VERSION_MAJOR = 6.0.1
PRODUCT_VERSION_MINOR = SPARCO
PRODUCT_VERSION_MAINTENANCE = v1.0
ifdef NOSP_BUILD_EXTRA
    NOSP_POSTFIX := $(NOSP_BUILD_EXTRA)
endif
ifndef NOSP_BUILD_TYPE
    NOSP_BUILD_TYPE := OFFICIAL
    NOSP_POSTFIX := $(shell date +"%Y%m%d-%H%M")
endif

# Set all versions
NOSP_VERSION := NOSP-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(NOSP_BUILD_TYPE).$(NOSP_POSTFIX)
NOSP_MOD_VERSION := NOSP-$(NOSP_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(NOSP_BUILD_TYPE).$(NOSP_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    nosp.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(shell date) \
    ro.nosp.version=$(NOSP_VERSION) \
    ro.modversion=$(NOSP_MOD_VERSION) \
    ro.nosp.buildtype=$(NOSP_BUILD_TYPE)

