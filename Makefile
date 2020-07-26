.PHONY: lint lint-compact lint-onepage
.PHONY: test test-compact test-onepage

lint-compact:
	tox -c ./compact/tox.ini -e lint --workdir ../.tox

lint-onepage:
	tox -c ./onepage/tox.ini -e lint --workdir ../.tox

test-compact:
	tox -c ./compact/tox.ini -e test --workdir ../.tox

 test-onepage:
	tox -c ./onepage/tox.ini -e test --workdir ../.tox

lint:
	make lint-compact
	make lint-onepage

test:
	make test-compact
	make test-onepage
