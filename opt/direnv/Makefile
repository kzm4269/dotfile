DIRENV_HOME := $(HOME)/.direnv

.SUFFIXES:

.PHONY:
install: $(DIRENV_HOME)

.PHONY:
deploy:
	ln -snf $(CURDIR)/direnvrc $(HOME)/.direnvrc

.PHONY:
update:

.PHONY:
clean:

$(DIRENV_HOME):
	bash install.sh
