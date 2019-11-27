#!/bin/bash

input="~/.ssh/known_hosts"
sed -i "/^$1.*$/d" "$input"
