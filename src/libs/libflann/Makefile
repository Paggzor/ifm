ifndef GW_SRC_DIR
GW_PROJECT_ROOT ?= $(shell for a in 1 2 3 4 5 6 7 8; do file="$${b}Makefile.project_config"; if [ -f $${b}Makefile.project_config ]; then cd $${b}.; pwd; break; fi; b="../$$b"; done)
include $(GW_PROJECT_ROOT)/Makefile.project_config
endif

GW_PKG=flann-1.8.4-src
GW_PKG_ZIP_BASE:=$(GW_PKG)

GW_CMAKE_FLAGS+=-DBUILD_SHARED_LIBS=OFF -DBUILD_PYTHON_BINDINGS=OFF

include ../Makefile.cmake.rules

