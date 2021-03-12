FZF_HOME := $(HOME)/.fzf

.SUFFIXES:

.PHONY:
install: $(FZF_HOME)
	$(FZF_HOME)/install --key-bindings --completion --no-update-rc

.PHONY:
deploy:

.PHONY:
update:

.PHONY:
clean:

$(FZF_HOME):
	git clone --depth 1 https://github.com/junegunn/fzf.git $@
