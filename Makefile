.PHONY: check setup run

setup:
	poetry install

check:
	poetry run ansible-playbook site.yaml --check

run:
	poetry run ansible-playbook site.yaml
