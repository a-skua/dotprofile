CONFIG_DIR=~/.config

set: set-nvim

clean: clean-nvim

set-wsl:
	if [ ! -h /etc/wsl.conf ]; then \
		sudo ln -s $(CURDIR)/wsl/wsl.conf /etc/wsl.conf; \
	fi

clean-wsl:
	if [ -h /etc/wsl.conf ]; then \
		sudo rm /etc/wsl.conf; \
	fi

init-nvim:
	if [ ! -d ${CONFIG_DIR}/nvim ]; then \
		mkdir -p $(CONFIG_DIR)/nvim; \
	fi

set-nvim: init-nvim
	if [ ! -h $(CONFIG_DIR)/nvim/init.vim ]; then \
		ln -s $(CURDIR)/nvim/init.vim $(CONFIG_DIR)/nvim/init.vim; \
	fi

clean-nvim:
	if [ -h ${CONFIG_DIR}/nvim/init.vim ]; then \
		rm ${CONFIG_DIR}/nvim/init.vim; \
	fi
