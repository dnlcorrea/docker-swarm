#!/bin/bash

sudo apt update -y
sudo apt install -y docker docker-compose
sudo systemctl enable docker --now
sudo usermod -aG docker vagrant
