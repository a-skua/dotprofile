WINDSURF_KEYBIND_SRC := $(HOME)/dev/dotprofile/windsurf/keybindings.json
WINDSURF_KEYBIND_DST := $(HOME)/.codeium/windsurf/keybindings.json
WINDSURF_GLOBAL_RULE_SRC := $(HOME)/dev/dotprofile/windsurf/global_rules.md
WINDSURF_GLOBAL_RULE_DST := $(HOME)/.codeium/windsurf/memories/global_rules.md

.PHONY: set-windsurf-keybindings set-windsurf-global-rule
set-windsurf-keybindings:
	ln -sf $(WINDSURF_KEYBIND_SRC) $(WINDSURF_KEYBIND_DST)

set-windsurf-global-rule:
	ln -sf $(WINDSURF_GLOBAL_RULE_SRC) $(WINDSURF_GLOBAL_RULE_DST)
