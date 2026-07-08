PYTHON=python

.PHONY: \
 build \
 test \
 lint \
 verify \
 run \
 clean

run:
	$(PYTHON) app/src/main.py

build:
	./scripts/build.sh

test:
	./scripts/test.sh

lint:
	./scripts/lint.sh

verify:
	./scripts/verify.sh

clean:
	find . -name "__pycache__" -type d -exec rm -rf {} +
	find . -name "*.pyc" -delete
	find . -name ".pytest_cache" -type d -exec rm -rf {} +
	find . -name ".ruff_cache" -type d -exec rm -rf {} +
