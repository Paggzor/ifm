GW_PROJECT_ROOT ?= $(shell for a in 1 2 3 4 5 6 7 8; do file="$${b}Makefile.project_config"; if [ -f $${b}Makefile.project_config ]; then cd $${b}.; pwd; break; fi; b="../$$b"; done)
include $(GW_PROJECT_ROOT)/Makefile.project_config


build: 
	@for i in $(shell cat subdirs.$(GW_PLATFORM)); \
	do\
	  [ $$? -eq 0 ] && make -C $$i $(MAKECMDGOALS); \
	done

clean: 
	@for i in $(shell find . -maxdepth 2 -mindepth 2 -name Makefile); \
	do\
	  [ $$? -eq 0 ] && make -C $$(dirname $$i ) $(MAKECMDGOALS);\
	done
	
doc:
	@for i in $(shell cat subdirs.doc); \
	do\
	  [ $$? -eq 0 ] && make -C $$i doc;\
	done
