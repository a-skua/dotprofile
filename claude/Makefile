CLAUDE_DIR := $(HOME)/.claude
TARGETS := CLAUDE.md commands

.PHONY: init clean

init: $(addprefix $(CLAUDE_DIR)/,$(TARGETS))

$(CLAUDE_DIR):
	mkdir -p $@

$(CLAUDE_DIR)/%: ./% | $(CLAUDE_DIR)
	ln -sf $(abspath $<) $@

clean:
	rm -f $(addprefix $(CLAUDE_DIR)/,$(TARGETS))
