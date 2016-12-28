.PHONY: all
all: var bundle

var:
	@mkdir -p var/backup
	@mkdir -p var/swap
	@mkdir -p var/undo

bundle:
	@mkdir $(CURDIR)/bundle
	@git clone https://github.com/Shougo/neobundle.vim $(CURDIR)/bundle/neobundle.vim

.PHONY: clean
clean:
	@rm -rf $(CURDIR)/bundle
