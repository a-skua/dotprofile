WINDSURF_GLOBAL_RULE_SRC := $(HOME)/dev/dotprofile/windsurf/global_rules.md
WINDSURF_GLOBAL_RULE_DST := $(HOME)/.codeium/windsurf/memories/global_rules.md

.PHONY: windsurf-global-rule
windsurf-global-rule: $(WINDSURF_GLOBAL_RULE_DST)

$(WINDSURF_GLOBAL_RULE_DST):
	mkdir -p $(dir $@)
	ln -sf $(WINDSURF_GLOBAL_RULE_SRC) $@
