#!/bin/bash

ansible-playbook ./main.yml
ansible-playbook ./yggdrasil.yml
ansible-playbook ./reboot.yml

