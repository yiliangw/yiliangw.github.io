BUNDLER ?= $(shell command -v bundle 2>/dev/null || command -v bundle3.3 2>/dev/null)
PREVIEW_PORT ?= 4000
PREVIEW_BASEURL ?= /absproxy/$(PREVIEW_PORT)

.PHONY: preview
preview:
	$(BUNDLER) exec jekyll serve --host 127.0.0.1 --port $(PREVIEW_PORT) --baseurl "$(PREVIEW_BASEURL)"
