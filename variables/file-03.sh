#!/bin/bash
read -p "Enter you name "  username
echo "Your name is $username"
sudo useradd -m $username
echo "New user added"

