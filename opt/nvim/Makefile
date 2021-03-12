NVIM_EXECUTABLE := $(HOME)/local/bin/nvim

.PHONY:
install: $(NVIM_EXECUTABLE)

.PHONY:
deploy:
	mkdir -p $(HOME)/.config
	ln -snf $(CURDIR) $(HOME)/.config/nvim

.PHONY:
update:

.PHONY:
clean:

$(NVIM_EXECUTABLE):
	@mkdir -p $(@D)
	@curl -L https://github.com/neovim/neovim/releases/download/stable/nvim.appimage > $@ 
	@chmod u+x $@
