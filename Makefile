PYTHON=python

.PHONY: build test run lint clean

build:
	@echo "Nothing to build"

run:
	$(PYTHON) app/src/main.py

test:
	pytest

lint:
	ruff check .
	black --check .

clean:
	find . -name "__pycache__" -type d -exec rm -rf {} +
	find . -name "*.pyc" -delete
