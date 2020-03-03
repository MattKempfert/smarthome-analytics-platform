# Ansible Playbook for configuring a RaspberryPi

[![Build Status](https://cloud.drone.io/api/badges/MattKempfert/raspberrypi-base-ansible/status.svg)](https://cloud.drone.io/MattKempfert/raspberrypi-base-ansible)

This repository consists of several role Ansible Playbooks used for installing and configuring software necessary for running a Raspberry Pi.

## Playbook execution

```sh
ansible-playbook --inventory hosts --private-key ~/.ssh/raspberry_pi playbook.yml
```
