#
# Copyright (C) 2024 The Android Open Source Project
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
#

# This file contains the trunk-stable flags that should be exported to all
# Android targets.

# Control libbinder client caching
$(call soong_config_set, libbinder, release_libbinder_client_cache, $(RELEASE_LIBBINDER_CLIENT_CACHE))

# Control caching while adding service in libbinder cache
$(call soong_config_set, libbinder, release_libbinder_addservice_cache, $(RELEASE_LIBBINDER_ADDSERVICE_CACHE))

# Remove static list in libbinder cache
$(call soong_config_set, libbinder, release_libbinder_remove_cache_static_list, $(RELEASE_LIBBINDER_REMOVE_CACHE_STATIC_LIST))

# Use the configured release of sqlite
$(call soong_config_set, libsqlite3, release_package_libsqlite3, $(RELEASE_PACKAGE_LIBSQLITE3))

# Use the configured MessageQueue implementation
$(call soong_config_set, messagequeue, release_package_messagequeue_implementation, $(RELEASE_PACKAGE_MESSAGEQUEUE_IMPLEMENTATION))

# Use the configured version of Cronet
$(call soong_config_set,cronet,enable_cronet_tot,$(RELEASE_ENABLE_TOT_CRONET))

# Use the configured version of WebView
$(call soong_config_set, webview, release_package_webview_version, $(RELEASE_PACKAGE_WEBVIEW_VERSION))
