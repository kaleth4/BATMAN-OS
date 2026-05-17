#!/bin/bash

# Comprobamos que pasaste un archivo como argumento
if [ -z "$1" ]; then
    echo "Uso: ./extractPorts.sh <archivo.gnmap>"
    exit 1
fi

# El código adaptado para script
ports="$(cat "$1" | grep -oP '\d{1,3}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
ip_address="$(cat "$1" | grep -oP '\d{1,3}(\.\d{1,3}){3}' | sort -u | head -n 1)"

echo -e "\n[*] Extracting information...\n"
echo -e "\t[*] IP Address: $ip_address"
echo -e "\t[*] Open ports: $ports\n"

# Copiar al portapapeles (requiere xclip)
echo -n "$ports" | xclip -sel clip 2>/dev/null || echo "[!] Error: xclip no instalado"

echo -e "[*] Ports copied to clipboard\n"
