CLAUDE_OLD_DIR := $(HOME)/.claude
CLAUDE_DIR := $(HOME)/.config/claude
TARGETS := CLAUDE.md commands

.PHONY: claude-md clean dirs
claude-md: $(addprefix $(CLAUDE_DIR)/,$(TARGETS)) $(addprefix $(CLAUDE_OLD_DIR)/,$(TARGETS))

$(CLAUDE_DIR) $(CLAUDE_OLD_DIR):
	mkdir -p $@

$(CLAUDE_DIR)/% $(CLAUDE_OLD_DIR)/%: ./% | $(CLAUDE_DIR) $(CLAUDE_OLD_DIR)
	ln -sf $(abspath $<) $@

clean:
	rm -f $(addprefix $(CLAUDE_DIR)/,$(TARGETS))
	rm -f $(addprefix $(CLAUDE_OLD_DIR)/,$(TARGETS))
