#!/bin/bash

. ./openrc.sh; ansible-playbook -vv mrc.yaml | tee output.txt