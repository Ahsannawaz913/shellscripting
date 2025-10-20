#!/bin/bash
for (( num=$2; num<=$3; num++ ))
do
	sudo mkdir "$1$num"
done
