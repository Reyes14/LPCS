#!/bin/bash

contraseña() {
    if [ "$1" = "Admin" ]; then
        echo "Hello, Admin!"
    else
        echo "Hello, stranger!"
    fi
}

for ((i=0; i<3; i++)); do
    read -p "Enter a name: " name
    contraseña "$name"
done
