GITCONFIG := $(HOME)/.gitconfig

.PHONY: init clean

init: $(GITCONFIG)
	git config --global -e

$(GITCONFIG):
	cp .gitconfig $@

clean:
	rm -f $(GITCONFIG)
