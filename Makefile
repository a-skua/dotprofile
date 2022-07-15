CONFIG_DIR=~/.config

default:
	./readme.sh

set: init
	ln -s $(CURDIR)/nvim/init.vim $(CONFIG_DIR)/nvim

clean:
	rm ${CONFIG_DIR}/nvim/init.vim

init:
	mkdir -p $(CONFIG_DIR)/nvim
