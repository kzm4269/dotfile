MAKEFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
DOTFILES := $(HOME)/.zsh $(HOME)/.zshrc $(HOME)/.zshenv

.PHONY:
install:

.PHONY:
deploy: $(DOTFILES)

.PHONY:
update:

.PHONY:
clean:
	rm -rf $(HOME)/.zsh $(HOME)/.zshrc $(HOME)/.zshenv

$(HOME)/.zsh:
	ln -snf $(MAKEFILE_DIR) $(HOME)/.zsh

$(HOME)/.zshrc:
	ln -snf $(MAKEFILE_DIR)/zshrc $(HOME)/.zshrc

$(HOME)/.zshenv:
	ln -snf $(MAKEFILE_DIR)/zshenv $(HOME)/.zshenv

