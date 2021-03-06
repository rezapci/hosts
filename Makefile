PIP = 'pip3'
PYTEST = 'pytest'
PYTHON = 'python3'

default: usage

usage:
	@echo
	@echo 'Usage: make <action>'
	@echo
	@echo '    setup                install dependencies'
	@echo '    test                 run unit tests'

setup:
	@$(PIP) install -r requirements.txt

test-travis:
	@$(PYTEST)

test:
	@$(PYTHON) -m $(PYTEST)
