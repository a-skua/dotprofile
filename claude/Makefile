CLAUDE_OLD_DIR := $(HOME)/.claude
CLAUDE_DIR := $(HOME)/.config/claude

.PHONY: claude-md
claude-md: $(CLAUDE_DIR)/CLAUDE.md $(CLAUDE_OLD_DIR)/CLAUDE.md

%/CLAUDE.md: ./CLAUDE.md
	mkdir -p $(dir $@)
	ln -sf $(abspath $<) $@
