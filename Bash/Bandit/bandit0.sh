#!/bin/bash

#sshpass para colocar el password directamente.
#ssh para conectarnos, con el parametro -q de quiet para que no nos muestre errores ni saludos de inicio.
#cat readme para leer el archivo que contiene el password.
#grep para obtener solo la linea que tiene la palabra password.
#awk para obtener solo el password, usamos el parametro -F (Field Separator - Separador de campos) para poder usar los ':' de referencia para obtener solo el password, ademas usamos '{print &N}' N es el que indica si quieres el primer espacio de texto antes del separador '$1' o despues del separador '$2'
#En este caso como queremos mandar a la clipboard el password y ademas queremos mostrarlo usamos tee para que nos muestre el resultado en nuestra terminal actual y luego lo mande a la clipboard.
sshpass -p 'bandit0' ssh -q bandit0@bandit.labs.overthewire.org -p 2220 "cat readme" | grep 'password' | awk -F': ' '{print $2}' | tee /dev/tty | xclip -selection clipboard
