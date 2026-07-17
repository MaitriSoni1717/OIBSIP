#!/bin/bash
sudo apt install ufw -y
sudo ufw allow ssh
sudo ufw deny http
sudo ufw status verbos
