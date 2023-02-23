add_definitions(-DBOOST_LOCALE_WITH_ICU)
add_definitions(-DBOOST_FILESYSTEM_NO_CXX20_ATOMIC_REF)

include_directories (./)

add_library(boost STATIC 
libs/system/src/error_code.cpp
libs/filesystem/src/operations.cpp
libs/thread/src/pthread/thread.cpp
libs/thread/src/pthread/once.cpp
libs/thread/src/future.cpp
libs/filesystem/src/directory.cpp
libs/filesystem/src/exception.cpp
libs/filesystem/src/codecvt_error_category.cpp
libs/filesystem/src/path_traits.cpp
libs/filesystem/src/path.cpp
libs/filesystem/src/unique_path.cpp
libs/chrono/src/chrono.cpp
libs/date_time/src/gregorian/greg_month.cpp
libs/date_time/src/gregorian/gregorian_types.cpp
libs/regex/src/posix_api.cpp
libs/regex/src/regex.cpp
libs/regex/src/regex_debug.cpp
libs/regex/src/static_mutex.cpp
libs/regex/src/wide_posix_api.cpp
libs/program_options/src/cmdline.cpp
libs/program_options/src/config_file.cpp
libs/program_options/src/convert.cpp
libs/program_options/src/options_description.cpp
libs/program_options/src/parsers.cpp
libs/program_options/src/positional_options.cpp
libs/program_options/src/split.cpp
libs/program_options/src/utf8_codecvt_facet.cpp
libs/program_options/src/value_semantic.cpp
libs/program_options/src/variables_map.cpp
libs/program_options/src/winmain.cpp
)

set(Boost_FOUND True CACHE BOOL "Boost found")
set(Boost_Include_DIR ${CMAKE_CURRENT_LIST_DIR} CACHE PATH "Boost include dirs")
