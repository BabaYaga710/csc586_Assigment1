#!/bin/bash

date >> /tmp/state.log

uptime >> /tmp/state.log

ps -fa >> /tmp/state.log
