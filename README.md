# Ansible Playbook containing roles configuring a RaspberryPi

[![Build Status](https://cloud.drone.io/api/badges/MattKempfert/raspberrypi-base-ansible/status.svg)](https://cloud.drone.io/MattKempfert/raspberrypi-base-ansible)

This repository consists of several role Ansible Playbooks used for installing and configuring software necessary for running a Raspberry Pi.

List of ansible modules: [https://docs.ansible.com/ansible/latest/collections/index_module.html]

## Development

It's recommended to use a dedicated, virtual python environment when adding new features, fixing bugs, or in general doing any python development work. Use the following commands to initialize and activate a virtual environment.

```zsh
# Initialize virtual environment
pyenv virtualenv 3.9.1 raspberrypi-base-ansible

# Activate virtual environment
pyenv activate raspberrypi-base-ansible

# Install Ansible and required additional collections
make
```

## Playbook execution

```sh
# Configure and run Telegraf
make telegraf

# Configure and run InfluxDB
make influxdb

# Configure and run Grafana
make grafana

# Configure and run Telegraf
make telegraf
```
