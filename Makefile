default: install test

install:
    # Upgrade pip
	pip install --upgrade pip

    # Install Ansible
	pip install -r requirements.txt

test: install
    # Install testing packages
	pip install -r requirements-test.txt

    # Check playbooks for practices and behaviors that could potentially be improved
	ansible-lint playbook.yml
	ansible-playbook --inventory hosts.yml --syntax-check -v playbook.yml

setup: test
	ansible-playbook --inventory hosts.yml --private-key ~/.ssh/raspberry_pi --tags setup playbook.yml

telegraf: test
	ansible-playbook --inventory hosts.yml --private-key ~/.ssh/raspberry_pi --tags telegraf playbook.yml

influxdb: test
	ansible-playbook --inventory hosts.yml --private-key ~/.ssh/raspberry_pi --tags influxdb playbook.yml

grafana: test
	ansible-playbook --inventory hosts.yml --private-key ~/.ssh/raspberry_pi --tags grafana playbook.yml

all: test
	ansible-playbook --inventory hosts.yml --private-key ~/.ssh/raspberry_pi --tags setup,telegraf,influxdb,grafana playbook.yml
