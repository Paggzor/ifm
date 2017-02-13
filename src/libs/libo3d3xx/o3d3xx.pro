TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

CONFIG(debug, debug|release) {
#    INCLUDEPATH+=../../../staging/local-debug/include/
}else {
#    INCLUDEPATH+=../../../staging/local-release/include/
}

INCLUDEPATH += libo3d3xx-0.4.9/modules/camera/include/


SOURCES += \ 
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-config.cpp \
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-dump.cpp \
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-ifm-export.cpp \
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-ifm-import.cpp \
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-imager-types.cpp \
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-ls.cpp \
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-reboot.cpp \
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-reset.cpp \
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-rm.cpp \
    libo3d3xx-0.4.9/modules/camera/src/bin/o3d3xx-version.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/app_config.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/camera.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/cmdline_opts.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/device_config.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/err.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/imager_config.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/net_config.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/spatial_filter_config.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/temporal_filter_config.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/util.cpp \
    libo3d3xx-0.4.9/modules/camera/src/libo3d3xx_camera/version.cpp \
    libo3d3xx-0.4.9/modules/camera/test/o3d3xx-app-imager-tests.cpp \
    libo3d3xx-0.4.9/modules/camera/test/o3d3xx-basic-tests.cpp \
    libo3d3xx-0.4.9/modules/camera/test/o3d3xx-camera-testrunner.cpp \
    libo3d3xx-0.4.9/modules/camera/test/o3d3xx-camera-tests.cpp \
    libo3d3xx-0.4.9/modules/camera/test/o3d3xx-import-export-tests.cpp \
    libo3d3xx-0.4.9/modules/camera/test/o3d3xx-spatial-filter-tests.cpp \
    libo3d3xx-0.4.9/modules/camera/test/o3d3xx-temporal-filter-tests.cpp \
    libo3d3xx-0.4.9/modules/framegrabber/src/bin/o3d3xx-hz.cpp \
    libo3d3xx-0.4.9/modules/framegrabber/src/bin/o3d3xx-schema.cpp \
    libo3d3xx-0.4.9/modules/framegrabber/src/libo3d3xx_framegrabber/byte_buffer.cpp \
    libo3d3xx-0.4.9/modules/framegrabber/src/libo3d3xx_framegrabber/frame_grabber.cpp \
    libo3d3xx-0.4.9/modules/framegrabber/src/libo3d3xx_framegrabber/pcic_schema.cpp \
    libo3d3xx-0.4.9/modules/framegrabber/test/o3d3xx-frame_grabber-tests.cpp \
    libo3d3xx-0.4.9/modules/framegrabber/test/o3d3xx-framegrabber-testrunner.cpp

HEADERS += \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/app_config.h \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/camera.hpp \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/cmdline_opts.h \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/device_config.h \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/err.h \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/imager_config.h \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/net_config.h \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/spatial_filter_config.h \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/temporal_filter_config.h \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera/util.h \
    libo3d3xx-0.4.9/modules/camera/include/o3d3xx_camera.h \
    libo3d3xx-0.4.9/modules/framegrabber/include/o3d3xx_framegrabber/byte_buffer.hpp \
    libo3d3xx-0.4.9/modules/framegrabber/include/o3d3xx_framegrabber/frame_grabber.h \
    libo3d3xx-0.4.9/modules/framegrabber/include/o3d3xx_framegrabber/pcic_schema.h \
    libo3d3xx-0.4.9/modules/framegrabber/include/o3d3xx_framegrabber.h

DISTFILES += \
    libo3d3xx-0.4.9/CMakeLists.txt \
    libo3d3xx-0.4.9/modules/camera/CMakeLists.txt

