#
# Copyright (C) 2017 The LineageOS Project
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

TARGET_KERNEL_VERSION := 3.18

# Inherit from common msm8937-common
-include device/xiaomi/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/ulysse

# Asserts
TARGET_OTA_ASSERT_DEVICE := ulysse,ugglite,ugg

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

ifeq ($(TARGET_KERNEL_VERSION),3.18)
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest-l2.xml
else ifeq ($(TARGET_KERNEL_VERSION),4.9)
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest-l3.xml
endif

# Kernel
TARGET_KERNEL_CONFIG := ulysse_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/ulysse-$(TARGET_KERNEL_VERSION)

# Partitions
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10332634112 # 10332650496 - 16384
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912
TARGET_COPY_OUT_VENDOR := vendor

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/sys/dev/dt2w"

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security Patch Level
VENDOR_SECURITY_PATCH := 2020-05-05

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/xiaomi/ulysse/BoardConfigVendor.mk
