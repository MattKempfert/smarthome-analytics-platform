default: build test

build:
    # Upgrade pip
	pip3 install --upgrade pip

    # Install Ansible
	pip install -r requirements.txt

    # Install the ansible.posix collection for mounting devices
	ansible-galaxy collection install ansible.posix

    # Install the community.docker collection for managing Docker
	ansible-galaxy collection install community.docker

test: build
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
