find_library(LIB_glog NAMES glog)
find_library(LIB_xmlrpcxx NAMES xmlrpc++)
find_library(LIB_xmlrpc_clientxx NAMES xmlrpc_client++)

file(GLOB O3D3XX_CAMERA_SOURCES *.cpp)

################################################
## Compile source once for both shared and static libs
################################################
add_library(o3d3xx_camera OBJECT ${O3D3XX_CAMERA_SOURCES})
set_property(TARGET o3d3xx_camera PROPERTY POSITION_INDEPENDENT_CODE 1)
if(CMAKE_CROSSCOMPILING)
  set_target_properties(o3d3xx_camera PROPERTIES
                        COMPILE_FLAGS "${CROSSTOOL_COMPILE_FLAGS}")
endif(CMAKE_CROSSCOMPILING)

################################################
##
## NOTE: While we could create a libary of the
## same name for both shared and static, it is
## my understading that while this will work
## fine on both Linux and Mac OS X, Windows will
## have a problem with that. So, the strategy
## is to produce a `libo3d3xx_camera.so' and a
## `libo3d3xx_camera_static.a'.
##
################################################

################################################
## Create the shared library
################################################
if(BUILD_SHARED_LIBS)
  add_library(o3d3xx_camera_shared SHARED $<TARGET_OBJECTS:o3d3xx_camera>)
    target_link_libraries(
      o3d3xx_camera_shared
      ${LIB_glog}
      ${Boost_LIBRARIES}
      ${LIB_xmlrpcxx}
      ${LIB_xmlrpc_clientxx}
      )

  set_target_properties(o3d3xx_camera_shared PROPERTIES
    VERSION
    "${O3D3XX_VERSION_MAJOR}.${O3D3XX_VERSION_MINOR}.${O3D3XX_VERSION_PATCH}"
    OUTPUT_NAME o3d3xx_camera
    LINKER_LANGUAGE CXX
    )

  install(
    TARGETS o3d3xx_camera_shared
    DESTINATION lib
    EXPORT o3d3xx_camera-targets
    )
endif(BUILD_SHARED_LIBS)

################################################
## Create the static library
################################################
if(BUILD_STATIC_LIBS)
  add_library(o3d3xx_camera_static STATIC $<TARGET_OBJECTS:o3d3xx_camera>)
  target_link_libraries(
    o3d3xx_camera_static
    ${LIB_glog}
    ${Boost_LIBRARIES}
#    ${LIB_xmlrpcxx}
#    ${LIB_xmlrpc_clientxx}
    ${XMLRPC_LIBRARIES}   #Fix by axel. ALL libraries need to be included :p
    )

  set_target_properties(o3d3xx_camera_static PROPERTIES
    LINKER_LANGUAGE CXX
    )

  install(
    TARGETS o3d3xx_camera_static
    DESTINATION lib
    EXPORT o3d3xx_camera-targets
    )


set(PKG_CONFIG_OUTPUT_REQUIRES_PRIVATE "xmlrpc")
set(PKG_CONFIG_OUTPUT_LIBS "-lo3d3xx_camera_static")

#ideally boost and glog should also be listed as a required lib like xmlrpc, but
#because they lack pkg-config files we add them manually as private libs
foreach( ABS_LIB ${LIB_glog} ${Boost_LIBRARIES} )
  get_filename_component( LIB ${ABS_LIB} NAME_WE )
  string(REGEX REPLACE "^lib" "" LIB ${LIB})   #By axel: Is there a better way to do this thats not platform dependent?
  set(PKG_CONFIG_OUTPUT_LIBS_PRIVATE "${PKG_CONFIG_OUTPUT_LIBS_PRIVATE} -l${LIB}")
endforeach()

#Kangfr: Some different stuff to try
#set(PKG_CONFIG_OUTPUT_LIBS "-lo3d3xx_camera_static")
#MESSAGE( STATUS "Kangfr Boost_LIBRARIES:         " ${Boost_LIBRARIES} )
#MESSAGE( STATUS "Kangfr XMLRPC_LIBRARIES:        " ${XMLRPC_LIBRARIES} )
#MESSAGE( STATUS "Kangfr LIB_glog:                " ${LIB_glog} )
#Convert lists of link libraries into -lstdc++ -lm etc..
#foreach(LIB ${CMAKE_CXX_IMPLICIT_LINK_LIBRARIES} ${PLATFORM_LIBS})
#  set(PRIVATE_LIBS "${PRIVATE_LIBS} -l${LIB}")
#endforeach()
#string (REPLACE ";" " " PKG_CONFIG_OUTPUT_LIBS_PRIVATE "${PKG_CONFIG_OUTPUT_LIBS_PRIVATE}")

configure_file(pkg-config-template.pc.in ${CMAKE_CURRENT_BINARY_DIR}/pkgconfig/o3d3xx_camera.pc @ONLY)
install( DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/pkgconfig/ DESTINATION lib/pkgconfig)

endif(BUILD_STATIC_LIBS)
