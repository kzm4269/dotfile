ANYENV_HOME := $(HOME)/.anyenv
ANYENV := $(ANYENV_HOME)/bin/anyenv
PYENV_HOME := $(ANYENV_HOME)/envs/pyenv
PYENV_VIRTUALENV := $(PYENV_HOME)/plugins/pyenv-virtualenv
PYENV_WHICH_EXT := $(PYENV_HOME)/plugins/pyenv-which-ext

TARGETS := $(ANYENV_HOME) $(PYENV_HOME) $(PYENV_VIRTUALENV) $(PYENV_WHICH_EXT)

.PHONY:
install: $(TARGETS)

.PHONY:
deploy:

.PHONY:
update:
	@cd $(ANYENV_HOME) && git pull
	@cd $(PYENV_HOME) && git pull
	@cd $(PYENV_VIRTUALENV) && git pull
	@cd $(PYENV_WHICH_EXT) && git pull

.PHONY:
clean:

$(ANYENV_HOME):
	git clone https://github.com/riywo/anyenv $(ANYENV_HOME)

$(PYENV_HOME): $(ANYENV_HOME)
	$(ANYENV) install pyenv

$(PYENV_VIRTUALENV):
	git clone https://github.com/yyuu/pyenv-virtualenv $@

$(PYENV_WHICH_EXT):
	git clone https://github.com/pyenv/pyenv-which-ext $@
