# Enable C++
enable_language(CXX)

# Force C++14 on all targets
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD 14 PARENT_SCOPE)
set_property(GLOBAL PROPERTY CXX_STANDARD_REQUIRED)

# Turn on position independent code.  This simplifies building both static
# and shared libraries.
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON PARENT_SCOPE)

# Figure out if we should look for OpenMP
mark_as_advanced(CLEAR ENABLE_OPENMP)
set(ENABLE_OPENMP ON CACHE BOOL "Enable OpenMP?")
if(ENABLE_OPENMP)
    # If we enable OpenMP, go ahead and make it required and find the
    # library.
    find_package(OpenMP REQUIRED)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}" PARENT_SCOPE)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}" PARENT_SCOPE)
endif()

# Set the Optizelle include directories
set(OPTIZELLE_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR})

# When compiled as third party library, you need to use this var in the root CMakelists.txt
set_property(GLOBAL PROPERTY poptizelle_include_dirs "${OPTIZELLE_INCLUDE_DIRS}")

# Compile the Optizelle core
add_subdirectory(optizelle)
