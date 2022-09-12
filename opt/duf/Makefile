DUF_HOME := $(HOME)/.duf

.SUFFIXES:

.PHONY:
install: $(DUF_HOME)
	@cd $(DUF_HOME) && go build

.PHONY:
deploy: install
	@ln -snf $(DUF_HOME)/duf ~/local/bin/duf 

.PHONY:
update: $(DUF_HOME)
	@cd $(DUF_HOME) && git pull && go build

.PHONY:
clean:

$(DUF_HOME):
	git clone https://github.com/muesli/duf.git $@
