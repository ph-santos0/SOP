#!/bin/bash
read -p "Digite a mensagem: " mensagem
read -p "Quantas vezes repetir? " numero

for ((i=1; i<=numero; i++))
do
  echo "$mensagem"
done
