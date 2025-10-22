#!/bin/bash
Create-directory() {
             sudo mkdir demo
}

if ! Create-directory; then
	echo "the code in not working"
	exit 1
fi
echo "intrepted"


