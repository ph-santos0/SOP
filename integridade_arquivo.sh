#!/bin/bash

echo "Digite o caminho para verificar:"
read arquivo

hash_atual=$(sha256sum "$arquivo" | awk '{print $1}')
hash_registrado="hash_salvo.txt"

if [ ! -f "$hash_registrado" ]; then
	echo "$hash_atual"> "$hash_registrado"
	echo "[+] Hash registrado para conferencia futura."
else
	hash_antigo=$(cat "$hash_registrado")

if [ "$hash_atual" = "$hash_antigo" ]; then
	echo "[+] Arquivo Integro. Nenhuma alteração detectada"
else
	echo "!!!Arquivo adulterado!!!"
	echo "Hash Antigo: $hash_antigo"
	echo "Hash Atual: $hash_atual"

fi
fi
