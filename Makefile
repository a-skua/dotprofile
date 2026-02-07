.PHONY: init init-nvim init-git init-claude clean clean-nvim clean-git clean-claude

init: init-nvim init-git init-claude

init-nvim:
	$(MAKE) -C nvim

init-git:
	$(MAKE) -C git

init-claude:
	$(MAKE) -C claude

clean: clean-nvim clean-git clean-claude

clean-nvim:
	$(MAKE) -C nvim clean

clean-git:
	$(MAKE) -C git clean

clean-claude:
	$(MAKE) -C claude clean

# wsl (not included in default init)
.PHONY: init-wsl clean-wsl
init-wsl:
	$(CURDIR)/wsl/set.sh

clean-wsl:
	$(CURDIR)/wsl/clean.sh
