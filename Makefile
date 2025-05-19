NVIM_PLUGINS_DIR := $(HOME)/.config/nvim/pack/plugins/start
NVIM_GITHUB_DIR  := $(HOME)/.config/nvim/pack/github/start

.PHONY: nvim-plugins
nvim-plugins: $(NVIM_PLUGINS_DIR)/ctrlp $(NVIM_GITHUB_DIR)/copilot.vim

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


$(NVIM_PLUGINS_DIR):
	mkdir -p $@

$(NVIM_GITHUB_DIR):
	mkdir -p $@

$(NVIM_PLUGINS_DIR)/ctrlp: $(NVIM_PLUGINS_DIR)
	git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git $@

$(NVIM_GITHUB_DIR)/copilot.vim: $(NVIM_GITHUB_DIR)
	git clone --depth=1 https://github.com/github/copilot.vim.git $@
