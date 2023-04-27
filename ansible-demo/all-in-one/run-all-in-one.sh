#!/usr/bin/env bash

. ./openrc.sh; ansible-playbook -vv -i hosts all-in-one.yaml | tee output.txt
