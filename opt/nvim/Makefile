NVIM_EXECUTABLE := $(HOME)/local/bin/nvim

.PHONY:
update:

.PHONY:
install: $(NVIM_EXECUTABLE)

$(NVIM_EXECUTABLE):
	@mkdir -p $(@D)
	@curl -L https://github.com/neovim/neovim/releases/download/stable/nvim.appimage > $@ 
	@chmod u+x $@
