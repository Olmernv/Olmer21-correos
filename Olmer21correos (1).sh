#!/bin/bash

echo -e "\e[1;32m🅶🅴🅽🅴🆁🅰🅳🅾🆁
🅲🅾🆁🆁🅴🅾🆂\e[0m"
echo -e "\e[1;35mGENERADOR DE CORREOS OLMER21\e[0m"
# Ruta de la tarjeta SD
SD_CARD_PATH="/storage/emulated/0/correos_generados"

# Crear el directorio si no existe
mkdir -p "$SD_CARD_PATH"

# Solicitar el correo electrónico original
echo "Ingresa el correo electrónico original:"
read original_email

# Solicitar la cantidad de correos a generar
echo "Ingresa la cantidad de correos a generar:"
read num_emails

# Generar los nuevos correos electrónicos
for i in $(seq 1 $num_emails); do
    new_email="${original_email%@*}$i@${original_email#*@}"
    echo "$new_email" >> "$SD_CARD_PATH/correos_generados.txt"
done

echo "Correos generados y guardados en: $SD_CARD_PATH/correos_generados.txt"