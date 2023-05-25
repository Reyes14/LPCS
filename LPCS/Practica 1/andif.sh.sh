#!/bin/bash

read -p "Ingresa un usuario:" user
read -p "Ingresa una contraseña:" pass

if  [ "$user" = "admin" ] && [ "$pass" = "secreto" ];
then
  echo "Usuario valido."
else
  echo "Usuario no valido."
fi