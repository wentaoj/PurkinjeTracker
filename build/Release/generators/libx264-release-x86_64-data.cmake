########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libx264_COMPONENT_NAMES "")
if(DEFINED libx264_FIND_DEPENDENCY_NAMES)
  list(APPEND libx264_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES libx264_FIND_DEPENDENCY_NAMES)
else()
  set(libx264_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(libx264_PACKAGE_FOLDER_RELEASE "/home/wentao/.conan2/p/b/libx2126a43f17c0f6/p")
set(libx264_BUILD_MODULES_PATHS_RELEASE )


set(libx264_INCLUDE_DIRS_RELEASE )
set(libx264_RES_DIRS_RELEASE )
set(libx264_DEFINITIONS_RELEASE )
set(libx264_SHARED_LINK_FLAGS_RELEASE )
set(libx264_EXE_LINK_FLAGS_RELEASE )
set(libx264_OBJECTS_RELEASE )
set(libx264_COMPILE_DEFINITIONS_RELEASE )
set(libx264_COMPILE_OPTIONS_C_RELEASE )
set(libx264_COMPILE_OPTIONS_CXX_RELEASE )
set(libx264_LIB_DIRS_RELEASE "${libx264_PACKAGE_FOLDER_RELEASE}/lib")
set(libx264_BIN_DIRS_RELEASE )
set(libx264_LIBRARY_TYPE_RELEASE STATIC)
set(libx264_IS_HOST_WINDOWS_RELEASE 0)
set(libx264_LIBS_RELEASE x264)
set(libx264_SYSTEM_LIBS_RELEASE dl pthread m)
set(libx264_FRAMEWORK_DIRS_RELEASE )
set(libx264_FRAMEWORKS_RELEASE )
set(libx264_BUILD_DIRS_RELEASE )
set(libx264_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(libx264_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libx264_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libx264_COMPILE_OPTIONS_C_RELEASE}>")
set(libx264_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libx264_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libx264_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libx264_EXE_LINK_FLAGS_RELEASE}>")


set(libx264_COMPONENTS_RELEASE )