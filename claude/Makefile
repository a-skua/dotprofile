CLAUDE_OLD_DIR := $(HOME)/.claude
CLAUDE_DIR := $(HOME)/.claude
TARGETS := CLAUDE.md commands

.PHONY: all
all: $(addprefix $(CLAUDE_DIR)/,$(TARGETS))

$(CLAUDE_DIR):
	mkdir -p $@

$(CLAUDE_DIR)/%: ./% | $(CLAUDE_DIR)
	ln -sf $(abspath $<) $@

.PHONY: clean
clean:
	rm -f $(addprefix $(CLAUDE_DIR)/,$(TARGETS))
	rm -f $(addprefix $(CLAUDE_OLD_DIR)/,$(TARGETS))
