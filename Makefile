.PHONY: set-nvim clean-nvim nvim-plugins
nvim-plugins:
	$(MAKE) -C nvim nvim-plugins

set-nvim:
	$(MAKE) -C nvim set-nvim

clean-nvim:
	$(MAKE) -C nvim clean-nvim

set: set-nvim set-git

clean: clean-nvim

# git
set-git:
	$(CURDIR)/git/set.sh

# wsl
set-wsl:
	$(CURDIR)/wsl/set.sh

clean-wsl:
	$(CURDIR)/wsl/clean.sh

