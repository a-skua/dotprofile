# nvim関連のMakefile

NVIM_PLUGINS_DIR := $(HOME)/.config/nvim/pack/plugins/start
NVIM_GITHUB_DIR  := $(HOME)/.config/nvim/pack/github/start

.PHONY: nvim-plugins
nvim-plugins: \
	$(NVIM_PLUGINS_DIR)/ctrlp \
	$(NVIM_PLUGINS_DIR)/plug.vim \
	$(NVIM_GITHUB_DIR)/copilot.vim

set-nvim:
	$(CURDIR)/set.sh

clean-nvim:
	$(CURDIR)/clean.sh

$(NVIM_PLUGINS_DIR):
	mkdir -p $@

$(NVIM_GITHUB_DIR):
	mkdir -p $@

$(NVIM_PLUGINS_DIR)/ctrlp: $(NVIM_PLUGINS_DIR)
	git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git $@

$(NVIM_PLUGINS_DIR)/plug.vim: $(NVIM_PLUGINS_DIR)
	git clone --depth=1 https://github.com/junegunn/vim-plug.git $@

$(NVIM_GITHUB_DIR)/copilot.vim: $(NVIM_GITHUB_DIR)
	git clone --depth=1 https://github.com/github/copilot.vim.git $@
