ifndef GW_SRC_DIR
GW_PROJECT_ROOT ?= $(shell for a in 1 2 3 4 5 6 7 8; do file="$${b}Makefile.project_config"; if [ -f $${b}Makefile.project_config ]; then cd $${b}.; pwd; break; fi; b="../$$b"; done)
include $(GW_PROJECT_ROOT)/Makefile.project_config
endif

GW_AUTOCONF_FLAGS += --enable-shared=no
GW_PKG_ZIP_BASE:=curl-7.52.1


include ../Makefile.rules.autoconf
