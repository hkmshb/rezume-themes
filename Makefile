.PHONY: lint lint-compact test test-compact

lint-compact:
	tox -c ./compact/tox.ini -e lint --workdir ../.tox

test-compact:
	tox -c ./compact/tox.ini -e test --workdir ../.tox

lint:
	make lint-compact

test:
	make test-compact
