DOTPATH := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
OPTS := $(wildcard $(DOTPATH)/opt/*/Makefile)

.PHONY:
deploy:
	ln -snf $(DOTPATH)/.path $(HOME)/.path
	ln -snf $(DOTPATH)/bin $(HOME)/.bin
	@$(foreach opt, $(OPTS), cd $(dir $(opt)) && $(MAKE) deploy;)

.PHONY:
install:
	@$(foreach opt, $(OPTS), cd $(dir $(opt)) && $(MAKE) install;)

.PHONY:
update:
	@$(foreach opt, $(OPTS), cd $(dir $(opt)) && $(MAKE) update;)

.PHONY:
clean:
	@$(foreach opt, $(OPTS), cd $(dir $(opt)) && $(MAKE) clean;)

.PHONY:
all: install deploy
