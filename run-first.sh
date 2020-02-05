#!/bin/bash

# desactication des mises à jours automatique
# pour éviter le verouillage d'apt
cp tools/20auto-upgrades /etc/apt/apt.conf.d/
