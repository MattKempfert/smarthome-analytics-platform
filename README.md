# Smart Home Analytics Platform

[![Build Status](https://cloud.drone.io/api/badges/MattKempfert/smarthome-analytics-platform/status.svg)](https://cloud.drone.io/MattKempfert/smarthome-analytics-platform)

This repository consists of several role Ansible Playbooks used for configuring and running InfluxDB, Grafana, and Telegraf in Docker on a Raspberry Pi. There are a few prerequesites and assumptions made before this playbook will run through successfully. This playbook assumes:

- Docker is installed. The playbook will start docker if it is not running, but the assumption is Docker is already installed.
- The `UUID` for mounting storage used by each of the services is hardcoded to my hard drive. This should be changed to using a variable in the future that can be set in the inventory.

## Development

It's recommended to use a dedicated, virtual python environment when adding new features, fixing bugs, or in general doing any python development work. Use the following commands to initialize and activate a virtual environment.

```zsh
# Initialize virtual environment
pyenv virtualenv 3.9.6 smarthome-analytics-platform

# Activate virtual environment
pyenv activate smarthome-analytics-platform

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
