ifndef GW_SRC_DIR
GW_PROJECT_ROOT ?= $(shell for a in 1 2 3 4 5 6 7 8; do file="$${b}Makefile.project_config"; if [ -f $${b}Makefile.project_config ]; then cd $${b}.; pwd; break; fi; b="../$$b"; done)
include $(GW_PROJECT_ROOT)/Makefile.project_config
endif

GW_PKG=pcl-pcl-1.7.1
GW_PKG_ZIP_BASE:=$(GW_PKG)

#GW_CMAKE_FLAGS+=-DBUILD_SHARED_LIBS=OFF -DPCL_SHARED_LIBS=OFF  PRoblem med mixade libs, pthread statiskt + libc dynamiskt
GW_CMAKE_FLAGS+=-DBUILD_SHARED_LIBS=OFF

include ../Makefile.cmake.rules


