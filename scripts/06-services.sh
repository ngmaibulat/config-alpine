#!/bin/sh


rc-status

rc-status default

rc-service sshd status

rc-service sshd stop
rc-service sshd start
rc-service sshd restart

rc-update add sshd

