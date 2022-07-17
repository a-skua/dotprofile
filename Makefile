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

# nvim
set-nvim:
	$(CURDIR)/nvim/set.sh

clean-nvim:
	$(CURDIR)/nvim/clean.sh
