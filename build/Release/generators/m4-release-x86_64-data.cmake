########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(m4_COMPONENT_NAMES "")
if(DEFINED m4_FIND_DEPENDENCY_NAMES)
  list(APPEND m4_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES m4_FIND_DEPENDENCY_NAMES)
else()
  set(m4_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(m4_PACKAGE_FOLDER_RELEASE "/home/wentao/.conan2/p/m43fe61932e2887/p")
set(m4_BUILD_MODULES_PATHS_RELEASE )


set(m4_INCLUDE_DIRS_RELEASE )
set(m4_RES_DIRS_RELEASE )
set(m4_DEFINITIONS_RELEASE )
set(m4_SHARED_LINK_FLAGS_RELEASE )
set(m4_EXE_LINK_FLAGS_RELEASE )
set(m4_OBJECTS_RELEASE )
set(m4_COMPILE_DEFINITIONS_RELEASE )
set(m4_COMPILE_OPTIONS_C_RELEASE )
set(m4_COMPILE_OPTIONS_CXX_RELEASE )
set(m4_LIB_DIRS_RELEASE )
set(m4_BIN_DIRS_RELEASE "${m4_PACKAGE_FOLDER_RELEASE}/bin")
set(m4_LIBRARY_TYPE_RELEASE UNKNOWN)
set(m4_IS_HOST_WINDOWS_RELEASE 0)
set(m4_LIBS_RELEASE )
set(m4_SYSTEM_LIBS_RELEASE )
set(m4_FRAMEWORK_DIRS_RELEASE )
set(m4_FRAMEWORKS_RELEASE )
set(m4_BUILD_DIRS_RELEASE )
set(m4_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(m4_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${m4_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${m4_COMPILE_OPTIONS_C_RELEASE}>")
set(m4_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${m4_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${m4_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${m4_EXE_LINK_FLAGS_RELEASE}>")


set(m4_COMPONENTS_RELEASE )