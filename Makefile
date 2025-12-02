PREFIX ?= $(HOME)/.local
BINDIR = $(PREFIX)/bin
CONFIG_DIR = $(HOME)/.config/spud

.PHONY: install uninstall

install:
	@echo "Installing spud to $(BINDIR)..."
	@mkdir -p $(BINDIR)
	@install -Dm755 spud $(BINDIR)/spud
	@echo "Setting up config directory at $(CONFIG_DIR)..."
	@mkdir -p $(CONFIG_DIR)
	@if [ ! -f $(CONFIG_DIR)/hooks.sh ]; then \
		install -Dm644 examples/hooks.sh $(CONFIG_DIR)/hooks.sh; \
		echo "  - Installed default hooks.sh"; \
	else \
		echo "  - Existing hooks.sh preserved"; \
	fi
	@install -Dm644 examples/notification.wav $(CONFIG_DIR)/notification.wav
	@echo "Installation complete!"
	@echo "  - Binary: $(BINDIR)/spud"
	@echo "  - Config: $(CONFIG_DIR)"
	@echo "  - Ensure $(BINDIR) is in your \$$PATH"

uninstall:
	@echo "Removing spud from $(BINDIR)..."
	@rm -f $(BINDIR)/spud
	@echo "Note: Config directory $(CONFIG_DIR) left intact"
	@echo "Remove manually with: rm -rf $(CONFIG_DIR)"
