ifndef GW_SRC_DIR
GW_PROJECT_ROOT ?= $(shell for a in 1 2 3 4 5 6 7 8; do file="$${b}Makefile.project_config"; if [ -f $${b}Makefile.project_config ]; then cd $${b}.; pwd; break; fi; b="../$$b"; done)
include $(GW_PROJECT_ROOT)/Makefile.project_config
endif

GW_PKG_SRC_DIR:=libo3d3xx-0.4.9

%/CMakeLists.txt : %.tar.gz
	@tar xzf $<
	@touch $@

build: $(GW_PKG_SRC_DIR)/CMakeLists.txt
	 make -f Makefile.camera $(MAKECMDGOALS)
	 make -f Makefile.framegrabber $(MAKECMDGOALS)
	 make -f Makefile.image $(MAKECMDGOALS)
	 
clean:
	rm -rf build
	rm -rf $(GW_PKG_SRC_DIR)
