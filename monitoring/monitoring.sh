#!/bin/bash

if [ "$1" = "start" ];
then
  sudo systemctl start influxdb
  echo "influxdb started"
  sudo systemctl start telegraf
  echo "telegraf started"
  sudo systemctl start grafana-server
  echo "grafana started"
  sudo systemctl start kapacitor
  echo "kapacitor started"
elif [ "$1" = "stop" ];
then
  sudo systemctl stop telegraf
  echo "telegraf stopped"
  sudo systemctl stop kapacitor
  echo "kapacitor stopped"
  sudo systemctl stop grafana-server
  echo "grafana stopped"
  sudo systemctl stop influxdb
  echo "influxdb stopped"
else
  echo "set flag 'start' or 'stop'"
  exit 1
fi
