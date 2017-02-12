ifndef GW_SRC_DIR
GW_PROJECT_ROOT ?= $(shell for a in 1 2 3 4 5 6 7 8; do file="$${b}Makefile.project_config"; if [ -f $${b}Makefile.project_config ]; then cd $${b}.; pwd; break; fi; b="../$$b"; done)
include $(GW_PROJECT_ROOT)/Makefile.project_config
endif

GW_PKG=eigen-3.3.2
GW_PKG_ZIP_BASE:=eigen-eigen-da9b4e14c255

GW_CMAKE_FLAGS+=-DBUILD_SHARED_LIBS=OFF

include ../Makefile.cmake.rules

