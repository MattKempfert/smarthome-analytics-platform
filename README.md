# Ansible Playbook for configuring a RaspberryPi

[![Build Status](https://cloud.drone.io/api/badges/MattKempfert/raspberrypi-base-ansible/status.svg)](https://cloud.drone.io/MattKempfert/raspberrypi-base-ansible)

This repository consists of several role Ansible Playbooks used for installing and configuring software necessary for running a Raspberry Pi.

List of ansible modules: https://docs.ansible.com/ansible/latest/collections/index_module.html

## Playbook execution

```sh
# Patch the OS
ansible-playbook --inventory hosts.yaml --private-key ~/.ssh/raspberry_pi --tags patching playbook.yml

# Configure telemetry
ansible-playbook --inventory hosts --private-key ~/.ssh/raspberry_pi --tags telemetry playbook.yml
```

## Development

It's recommended to use a dedicated, virtual python environment when adding new features, fixing bugs, or in general doing any python development work. Use the following commands to initialize and activate a virtual environment.

```zsh
# Initialize virtual environment
pyenv virtualenv 3.9.1 raspberrypi-base-ansible

# Activate virtual environment
pyenv activate raspberrypi-base-ansible
pip install --upgrade pip

# Install Ansible
pip install -r requirements.txt

# Install the ansible.posix collection for mounting devices
ansible-galaxy collection install ansible.posix

# Install the community.docker collection for managing Docker
ansible-galaxy collection install community.docker
```
