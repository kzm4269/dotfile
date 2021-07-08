GIBO_HOME := $(HOME)/.gibo

.SUFFIXES:

.PHONY:
install: $(GIBO_HOME)
	ln -snf $(GIBO_HOME)/gibo $(HOME)/local/bin/gibo

.PHONY:
deploy:

.PHONY:
update:
	@cd $(GIBO_HOME) && git pull

.PHONY:
clean:

$(GIBO_HOME):
	git clone https://github.com/simonwhitaker/gibo $@
