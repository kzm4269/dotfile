DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*)
EXCLUSIONS := .DS_Store .git .gitignore .gitmodules .travis.yml
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

list:
	@cd $(DOTPATH)
	@/bin/ls -dF $(DOTFILES)

update:
	git pull origin master
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/scripts/do.sh $(DOTPATH)/scripts/update

deploy:
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/scripts/do.sh $(DOTPATH)/scripts/deploy
	@cd $(DOTPATH)
	@$(foreach d, $(DOTFILES), ln -sfnv $(abspath $(d)) $(HOME)/$(d);)

init:
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/scripts/do.sh $(DOTPATH)/scripts/init

all: update deploy init

clean:
	@-$(foreach d, $(DOTFILES), rm -vrf $(HOME)/$(d);)
