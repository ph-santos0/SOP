#!/bin/bash
echo "Digite o host: "
read host
echo "Digite a porta: "
read porta
nc -z -w2 $host $porta

if [ $? -eq 0 ]; then
	echo "A porta $porta está aberta."
else
	echo "A porta $porta esta fechada"
fi
