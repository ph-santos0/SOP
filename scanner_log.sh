#!/bin/bash

echo "Digite o host a ser alvo do monitoramento: "
read alvo

data=$(date '+%d-%m-%Y_%H:%M:%S')
log="auditoria_portas_$data.txt"

echo "[+] Iniciando varredura em $alvo..." | tee -a $log

nmap -sV $alvo | tee -a $log
echo "[+] Auditoria concluida. Resultado salvo em $log."
