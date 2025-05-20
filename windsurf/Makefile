WINDSURF_GLOBAL_RULE_DIR := $(HOME)/.codeium/windsurf/memories

.PHONY: windsurf-global-rule
windsurf-global-rule: $(WINDSURF_GLOBAL_RULE_DIR)/global_rules.md

$(WINDSURF_GLOBAL_RULE_DIR)/global_rules.md: ./global_rules.md
	mkdir -p $(dir $@)
	ln -sf $(abspath $<) $@
