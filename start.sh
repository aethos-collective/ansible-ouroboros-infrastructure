#!/bin/bash

yamllint .
ansible-galaxy install -r ./requirements.yml
ansible-playbook ./main.yml
# ansible-playbook ./reboot.yml
