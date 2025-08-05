#!/bin/bash
read -p "Digite o nome do arquivo: " arquivo
if [ -f "$arquivo" ]; then
  echo "O arquivo existe."
else
  echo "O arquivo não existe."
fi
