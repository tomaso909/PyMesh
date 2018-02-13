############################ REQUIRED PACKAGES #################################

# Include Eigen
IF (NOT EIGNE_FOUND)
    FIND_PACKAGE(Eigen REQUIRED)
ENDIF (NOT EIGNE_FOUND)

############################ OPTIONAL PACKAGES #################################

# OpenCL
IF (NOT OPENCL_FOUND)
    FIND_PACKAGE(OpenCL)
ENDIF (NOT OPENCL_FOUND)

# SpraseHash
IF (NOT SPARSEHAHS_FOUND)
    FIND_PACKAGE(SparseHash)
ENDIF (NOT SPARSEHAHS_FOUND)

# Boost
IF (NOT Boost_FOUND)
    FIND_PACKAGE(Boost COMPONENTS system thread REQUIRED)
ENDIF (NOT Boost_FOUND)

# GMP
IF (NOT GMP_FOUND)
    FIND_PACKAGE(GMP)
ENDIF (NOT GMP_FOUND)

# MPFR
IF (NOT MPFR_FOUND)
    FIND_PACKAGE(MPFR)
ENDIF (NOT MPFR_FOUND)

# CGAL
IF (NOT CGAL_FOUND)
    IF (EXISTS ${PROJECT_SOURCE_DIR}/python/pymesh/third_party/lib/CGAL/UseCGAL.cmake)
        SET(CGAL_DIR ${PROJECT_SOURCE_DIR}/python/pymesh/third_party/lib/CGAL)
    ELSEIF (EXISTS ${PROJECT_SOURCE_DIR}/python/pymesh/third_party/lib64/CGAL/UseCGAL.cmake)
        SET(CGAL_DIR ${PROJECT_SOURCE_DIR}/python/pymesh/third_party/lib64/CGAL)
    ELSE (EXISTS ${PROJECT_SOURCE_DIR}/python/pymesh/third_party/lib/CGAL/UseCGAL.cmake)
        IF (DEFINED ENV{CGAL_PATH} AND NOT DEFINED ENV{CGAL_DIR})
            SET(CGAL_DIR $ENV{CGAL_PATH})
        ENDIF (DEFINED ENV{CGAL_PATH} AND NOT DEFINED ENV{CGAL_DIR})
    ENDIF (EXISTS ${PROJECT_SOURCE_DIR}/python/pymesh/third_party/lib/CGAL/UseCGAL.cmake)
    SET(CGAL_DONT_OVERRIDE_CMAKE_FLAGS TRUE CACHE BOOL
        "Disable CGAL from overwriting my cmake flags")
    FIND_PACKAGE(CGAL QUIET)
ENDIF (NOT CGAL_FOUND)

# MMG
IF (NOT MMG_FOUND)
    IF (DEFINED ENV{MMG_PATH})
        SET(MMG_BUILD_DIR $ENV{MMG_PATH})
    ELSE (DEFINED ENV{MMG_PATH})
        SET(MMG_BUILD_DIR ${PROJECT_SOURCE_DIR}/python/pymesh/third_party/)
    ENDIF (DEFINED ENV{MMG_PATH})
    FIND_PACKAGE(Mmg)
ENDIF (NOT MMG_FOUND)

# Qhull
IF (NOT QHULL_FOUND)
    IF (DEFINED ENV{QHULL_PATH})
        SET(QHULL_ROOT $ENV{QHULL_PATH})
    ENDIF (DEFINED ENV{QHULL_PATH})
    FIND_PACKAGE(Qhull)
ENDIF (NOT QHULL_FOUND)

# Quartet
IF (NOT QUARTET_FOUND)
    FIND_PACKAGE(Quartet)
ENDIF (NOT QUARTET_FOUND)

# Triangle
IF (NOT TRIANGLE_FOUND)
    FIND_PACKAGE(Triangle)
ENDIF (NOT TRIANGLE_FOUND)

# Tetgen
IF (NOT TETGEN_FOUND)
    FIND_PACKAGE(Tetgen)
ENDIF (NOT TETGEN_FOUND)

# Cork
IF (NOT CORK_FOUND)
    FIND_PACKAGE(Cork)
ENDIF(NOT CORK_FOUND)

# Clipper
IF (NOT CLIPPER_FOUND)
    FIND_PACKAGE(Clipper)
ENDIF (NOT CLIPPER_FOUND)

# libigl
IF (NOT LIBIGL_FOUND)
    FIND_PACKAGE(libigl)
ENDIF (NOT LIBIGL_FOUND)

# Carve
IF (NOT CARVE_FOUND)
    FIND_PACKAGE(Carve)
ENDIF (NOT CARVE_FOUND)

# BSP
IF (NOT BSP_FOUND)
    FIND_PACKAGE(BSP)
ENDIF (NOT BSP_FOUND)

# SuiteSparse
IF (NOT UMFPACK_FOUND)
    FIND_PACKAGE(Umfpack)
ENDIF (NOT UMFPACK_FOUND)

# Cholmod
IF (NOT CHOLMOD_FOUND)
    FIND_PACKAGE(Cholmod)
ENDIF (NOT CHOLMOD_FOUND)

# Metis
IF (NOT METIS_FOUND)
    FIND_PACKAGE(Metis)
ENDIF (NOT METIS_FOUND)

# tinyxml2
IF (NOT TINYXML2_FOUND)
    FIND_PACKAGE(tinyxml2)
ENDIF (NOT TINYXML2_FOUND)

# Lapack
IF (NOT LAPACK_FOUND)
    FIND_PACKAGE(LAPACK)
ENDIF (NOT LAPACK_FOUND)

# Geogram
IF (NOT GEOGRAM_FOUND)
    FIND_PACKAGE(Geogram)
ENDIF (NOT GEOGRAM_FOUND)

# openmp
IF (NOT OPENMP_FOUND)
    FIND_PACKAGE(OpenMP QUIET)
    IF (OPENMP_FOUND)
        SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
        SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
        MESSAGE(STATUS "OpenMP found")
    ELSE(OPENMP_FOUND)
        MESSAGE(STATUS "OpenMP not found")
    ENDIF (OPENMP_FOUND)
ENDIF (NOT OPENMP_FOUND)

# MKL
IF (NOT MKL_FOUND)
    FIND_PACKAGE(MKL)
ENDIF (NOT MKL_FOUND)
