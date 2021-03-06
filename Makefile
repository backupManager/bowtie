all: test

test:
	py.test --cov=./ --pylint --pylint-rcfile=pylintrc --pylint-error-types=RCWEF --ignore=doc

lint:
	py.test --pylint -m pylint --pylint-rcfile=pylintrc --pylint-error-types=RCWEF --ignore=doc

coverage:
	py.test --cov=./ --cov-report html --ignore=doc

loop:
	py.test --pylint --pylint-rcfile=pylintrc --pylint-error-types=RCWEF -f --ignore=doc

debug:
	py.test --pylint --pylint-rcfile=pylintrc --pylint-error-types=RCWEF -s --pdb --ignore=doc

upload:
	flit wheel --upload
