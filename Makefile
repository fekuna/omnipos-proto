.PHONY: help lint build breaking clean

BUF ?= buf

help:
	@echo "Available commands:"
	@echo "  make lint       - Lint proto files"
	@echo "  make build      - Validate proto (imports, deps)"
	@echo "  make breaking   - Check breaking changes (against main)"
	@echo "  make clean      - Clean generated artifacts (noop)"

lint:
	$(BUF) lint

build:
	$(BUF) build

breaking:
	$(BUF) breaking --against '.git#branch=main'

clean:
	@echo "Nothing to clean in proto repo"
