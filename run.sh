#!/bin/bash

source /venv/bin/activate

cd /somfy/*
pigpiod
sleep 0.5
pigs t
python3 operateShutters.py -c /config/shutters.conf -a -m
