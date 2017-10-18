DEIN_VIM = $(CURDIR)/dein

.PHONY: all
all:
	@mkdir -p $(DEIN_VIM)
	@curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | sh -s -- $(DEIN_VIM)

.PHONY: clean
clean:
	@rm -rf $(DEIN_VIM)
