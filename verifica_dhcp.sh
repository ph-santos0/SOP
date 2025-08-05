#!/bin/bash
if [ -f /etc/network/interfaces ]; then
  if grep -iq "dhcp" /etc/network/interfaces; then
    echo "O computador está configurado para obter IP via DHCP."
  else
    echo "O computador NÃO está configurado para usar DHCP."
  fi
else
  echo "Arquivo /etc/network/interfaces não encontrado."
fi
