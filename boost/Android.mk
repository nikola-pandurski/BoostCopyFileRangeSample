LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost
ifneq ($(NDK_TOOLCHAIN_VERSION), clang)
LOCAL_ARM_MODE := arm
endif

LOCAL_CPPFLAGS += -DBOOST_LOCALE_WITH_ICU

LOCAL_C_INCLUDES += $(LOCAL_PATH)

LOCAL_SRC_FILES += libs/system/src/error_code.cpp
LOCAL_SRC_FILES += libs/filesystem/src/operations.cpp
LOCAL_SRC_FILES += libs/thread/src/pthread/thread.cpp
LOCAL_SRC_FILES += libs/thread/src/pthread/once.cpp
LOCAL_SRC_FILES += libs/thread/src/future.cpp
LOCAL_SRC_FILES += libs/filesystem/src/codecvt_error_category.cpp
LOCAL_SRC_FILES += libs/filesystem/src/path_traits.cpp
LOCAL_SRC_FILES += libs/filesystem/src/path.cpp
LOCAL_SRC_FILES += libs/chrono/src/chrono.cpp
LOCAL_SRC_FILES += libs/date_time/src/gregorian/greg_month.cpp
LOCAL_SRC_FILES += libs/date_time/src/gregorian/date_generators.cpp
LOCAL_SRC_FILES += libs/date_time/src/gregorian/gregorian_types.cpp
LOCAL_SRC_FILES += libs/regex/src/cpp_regex_traits.cpp
LOCAL_SRC_FILES += libs/regex/src/cregex.cpp
LOCAL_SRC_FILES += libs/regex/src/c_regex_traits.cpp
LOCAL_SRC_FILES += libs/regex/src/fileiter.cpp
LOCAL_SRC_FILES += libs/regex/src/icu.cpp
LOCAL_SRC_FILES += libs/regex/src/instances.cpp
LOCAL_SRC_FILES += libs/regex/src/posix_api.cpp
LOCAL_SRC_FILES += libs/regex/src/regex.cpp
LOCAL_SRC_FILES += libs/regex/src/regex_debug.cpp
LOCAL_SRC_FILES += libs/regex/src/regex_raw_buffer.cpp
LOCAL_SRC_FILES += libs/regex/src/regex_traits_defaults.cpp
LOCAL_SRC_FILES += libs/regex/src/static_mutex.cpp
LOCAL_SRC_FILES += libs/regex/src/usinstances.cpp
LOCAL_SRC_FILES += libs/regex/src/w32_regex_traits.cpp
LOCAL_SRC_FILES += libs/regex/src/wc_regex_traits.cpp
LOCAL_SRC_FILES += libs/regex/src/wide_posix_api.cpp
LOCAL_SRC_FILES += libs/regex/src/winstances.cpp
LOCAL_SRC_FILES += libs/locale/src/encoding/codepage.cpp

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_STATIC_LIBRARIES = icuuc icudata

include $(BUILD_STATIC_LIBRARY)


