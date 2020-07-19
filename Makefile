.PHONY: test test-compact

test-compact:
	tox -c ./compact/tox.ini -e test --workdir ../.tox

test:
	make test-compact
