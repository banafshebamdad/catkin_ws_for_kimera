#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "kimera_vio" for configuration "Release"
set_property(TARGET kimera_vio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(kimera_vio PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "KimeraRPGO"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libkimera_vio.so"
  IMPORTED_SONAME_RELEASE "libkimera_vio.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS kimera_vio )
list(APPEND _IMPORT_CHECK_FILES_FOR_kimera_vio "${_IMPORT_PREFIX}/lib/libkimera_vio.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
