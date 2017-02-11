include Makefile.project_config

clean:
	@rm -rf staging/*
	@make -C src $(MAKECMDGOALS)

	
$(GW_SCRIPTS_DIR)/env-init-host : Makefile.project_config
	@echo "Creating $@"
	@echo "#/!bin/sh" > $@
	@echo 'echo "Info: This script must be sourced to have effect"' >> $@
	@echo "export PATH=$(GW_PATH):\$$PATH" >> $@
	@chmod +x $@

build: $(GW_SCRIPTS_DIR)/env-init-host
	@make -C src $(MAKECMDGOALS)

doc:
	@make -C src doc
	