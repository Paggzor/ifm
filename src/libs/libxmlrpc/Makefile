ifndef GW_SRC_DIR
GW_PROJECT_ROOT ?= $(shell for a in 1 2 3 4 5 6 7 8; do file="$${b}Makefile.project_config"; if [ -f $${b}Makefile.project_config ]; then cd $${b}.; pwd; break; fi; b="../$$b"; done)
include $(GW_PROJECT_ROOT)/Makefile.project_config
endif

GW_PKG_ZIP_BASE:=xmlrpc-c-1.39.11


GW_PARALELL_MAKE_FLAG="-j1"

include ../Makefile.rules.autoconf

post-build:
	rm -rf $(GW_STAGE_DIR)/lib/libxmlrpc*.so*