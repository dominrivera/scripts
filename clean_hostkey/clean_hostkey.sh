#!/bin/bash

input="~/.ssh/known_hosts"

key=$(grep -i $1 $input)
sed -i "/$key/d" $input
