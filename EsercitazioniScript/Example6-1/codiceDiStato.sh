#!/bin/bash
 
echo hello # Stampa "hello"
echo $?    # Stampa il codice comando eseguito prima
 
lskdf      # Comando non riconosciuto
echo $?    # Stampa il codice del comando eseguito prima ma che non è stato riconosciuto
 
echo # Stampa riga vuota
 
exit 113   # Fine script