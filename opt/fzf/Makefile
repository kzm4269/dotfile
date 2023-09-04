FZF_HOME := $(HOME)/.fzf

.SUFFIXES:

.PHONY:
install: $(FZF_HOME)
	$(FZF_HOME)/install --key-bindings --completion --no-update-rc

.PHONY:
deploy:

.PHONY:
update: $(FZF_HOME)
	cd $(FZF_HOME) && git fetch origin 0.42.0 && git checkout 0.42.0 && git reset --hard

.PHONY:
clean:
	rm -rf $(FZF_HOME) ~/.fzf.bash ~/.fzf.zsh

$(FZF_HOME):
	git clone https://github.com/junegunn/fzf.git $@
