NVIM_EXECUTABLE := $(HOME)/local/bin/nvim

.PHONY:
install: $(NVIM_EXECUTABLE)

.PHONY:
deploy:
	mkdir -p $(HOME)/.config
	ln -snf $(CURDIR) $(HOME)/.config/nvim

.PHONY:
update:
	@curl -L https://github.com/neovim/neovim/releases/download/$(shell curl -s https://api.github.com/repos/neovim/neovim/tags | grep -E '\s*"name":' | grep -oE 'v[0-9.]+' | head -n 1)/nvim.appimage > $(NVIM_EXECUTABLE)
	@chmod u+x $(NVIM_EXECUTABLE)

.PHONY:
clean:

$(NVIM_EXECUTABLE):
	@mkdir -p $(@D)
	@curl -L https://github.com/neovim/neovim/releases/download/$(shell curl -s https://api.github.com/repos/neovim/neovim/tags | grep -E '\s*"name":' | grep -oE 'v[1-9.]+' | head -n 1)/nvim.appimage > $(NVIM_EXECUTABLE)
	@chmod u+x $(NVIM_EXECUTABLE)
