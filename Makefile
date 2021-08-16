CONFIG_DIR=~/.config

default:
	./readme.sh

nvim: init
	ln -s $(CURDIR)/nvim/* $(CONFIG_DIR)/nvim

init:
	mkdir -p $(CONFIG_DIR)/nvim
