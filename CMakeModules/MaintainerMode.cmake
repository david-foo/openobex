option ( USE_MAINTAINER_MODE "Enable some stuff only relevant to developers" OFF )
if ( USE_MAINTAINER_MODE )
  if ( CMAKE_COMPILER_IS_GNUCC )
    set ( MAINTAINER_MODE_WARN_FLAGS
      extra
      no-unused-parameter
      no-missing-field-initializers
      declaration-after-statement
      missing-declarations
      redundant-decls
      cast-align
      no-sign-compare
    )
    foreach ( flag ${MAINTAINER_MODE_WARN_FLAGS} )
      set ( cflag "-W${flag}" )
      set ( CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${cflag}" )
      set ( CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS} ${cflag}" )
      set ( CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS} ${cflag}" )
      set ( CMAKE_C_FLAGS_MINSIZEREL "${CMAKE_C_FLAGS} ${cflag}" )
      set ( CMAKE_C_FLAGS_RELWITHDEBINFO "${CMAKE_C_FLAGS} ${cflag}" )      
    endforeach ( flag )
  endif ( CMAKE_COMPILER_IS_GNUCC )
endif ( USE_MAINTAINER_MODE )