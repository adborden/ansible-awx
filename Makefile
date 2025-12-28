.PHONY: build check setup run

setup:
	poetry install

build:
	poetry export -f requirements.txt --output requirements.txt --without-hashes
	poetry run ansible-builder build --tag ghcr.io/adborden/ansible-awx:latest

check:
	poetry run ansible-playbook site.yaml --extra-vars @secrets/vars.yaml --check

run:
	poetry run ansible-playbook site.yaml --extra-vars @secrets/vars.yaml

