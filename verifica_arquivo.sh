#!/bin/bash
echo "Digite o nome do arquivo: "
read arquivo

if [ -f "$arquivo" ]; then
	echo "O arquivo '$arquivo' existe na pasta."
	echo "Tamanho:$(stat -c %s "$arquivo") bytes"
else
	echo "Arquivo nao encontrado"
fi

