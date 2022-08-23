#!/bin/bash

read -p "Introduce tu dirección IP: " ip
read -p "¿Cuantos puertos quieres examinar?: " ports

for i in $(seq 0 $ports); do
	sudo nc -zv $ip $i 2>/dev/null && echo "El puerto $i está abierto"
done
