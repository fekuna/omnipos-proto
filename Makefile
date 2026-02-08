.PHONY: help all generate lint format build breaking update clean

BUF ?= buf

help:
	@echo "Available commands:"
	@echo "  make all        - Run lint, build, and generate"
	@echo "  make generate   - Generate code from proto files"
	@echo "  make lint       - Lint proto files"
	@echo "  make format     - Format proto files"
	@echo "  make build      - Validate proto (imports, deps)"
	@echo "  make breaking   - Check breaking changes (against main)"
	@echo "  make update     - Update dependencies (buf.lock)"
	@echo "  make clean      - Clean generated artifacts"

all: lint build generate

generate:
	$(BUF) generate

lint:
	$(BUF) lint

format:
	$(BUF) format -w

build:
	$(BUF) build

breaking:
	$(BUF) breaking --against '.git#branch=main'

update:
	$(BUF) dep update

clean:
	rm -rf gen/
