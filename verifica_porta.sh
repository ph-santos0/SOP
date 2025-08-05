#!/bin/bash
read -p "Digite o host: " host
read -p "Digite a porta: " porta

nc -zv $host $porta
if [ $? -eq 0 ]; then
  echo "A porta $porta em $host está aberta."
else
  echo "A porta $porta em $host está fechada."
fi
