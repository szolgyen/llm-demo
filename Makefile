PYTHON := python3
VENV := .venv

.PHONY: help setup install notebook freeze clean

help:
	@echo "Available commands:"
	@echo "  make setup"
	@echo "  make install"
	@echo "  make notebook"
	@echo "  make freeze"
	@echo "  make clean"

setup:
	$(PYTHON) -m venv $(VENV)
	$(VENV)/bin/pip install --upgrade pip
	$(VENV)/bin/pip install -r requirements.txt
	$(VENV)/bin/python -m ipykernel install \
		--user \
		--name llm-demo \
		--display-name "Python (llm-demo)"

install:
	$(VENV)/bin/pip install -r requirements.txt

notebook:
	$(VENV)/bin/jupyter lab

freeze:
	$(VENV)/bin/pip freeze > requirements.txt

clean:
	rm -rf $(VENV)
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete