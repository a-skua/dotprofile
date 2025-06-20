CLAUDE_DIR := $(HOME)/.config/claude

.PHONY: claude-md
claude-md: $(CLAUDE_DIR)/CLAUDE.md

$(CLAUDE_DIR)/CLAUDE.md: ./CLAUDE.md
	mkdir -p $(dir $@)
	ln -sf $(abspath $<) $@
