GW_PROJECT_ROOT ?= $(shell for a in 1 2 3 4 5 6 7 8; do file="$${b}Makefile.project_config"; if [ -f $${b}Makefile.project_config ]; then cd $${b}.; pwd; break; fi; b="../$$b"; done)
include $(GW_PROJECT_ROOT)/Makefile.project_config


build: 
#	@make -C tools host
	@make -C libs $(MAKECMDGOALS)
#	@make -C apps $(MAKECMDGOALS)

clean:
#	@make -C tools clean
	@make -C libs  clean
#	@make -C apps  clean

doc:
	@make -C libs doc
