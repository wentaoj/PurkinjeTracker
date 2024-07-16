# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(m4_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(m4_FRAMEWORKS_FOUND_RELEASE "${m4_FRAMEWORKS_RELEASE}" "${m4_FRAMEWORK_DIRS_RELEASE}")

set(m4_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET m4_DEPS_TARGET)
    add_library(m4_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET m4_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${m4_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${m4_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### m4_DEPS_TARGET to all of them
conan_package_library_targets("${m4_LIBS_RELEASE}"    # libraries
                              "${m4_LIB_DIRS_RELEASE}" # package_libdir
                              "${m4_BIN_DIRS_RELEASE}" # package_bindir
                              "${m4_LIBRARY_TYPE_RELEASE}"
                              "${m4_IS_HOST_WINDOWS_RELEASE}"
                              m4_DEPS_TARGET
                              m4_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "m4"    # package_name
                              "${m4_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${m4_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET m4::m4
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${m4_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${m4_LIBRARIES_TARGETS}>
                 )

    if("${m4_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET m4::m4
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     m4_DEPS_TARGET)
    endif()

    set_property(TARGET m4::m4
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${m4_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET m4::m4
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${m4_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET m4::m4
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${m4_LIB_DIRS_RELEASE}>)
    set_property(TARGET m4::m4
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${m4_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET m4::m4
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${m4_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(m4_LIBRARIES_RELEASE m4::m4)
