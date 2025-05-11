#!/bin/bash

# Si chiede all'utente di inserire il percorso della cartella sulla quale si vuole lavorare
read -p "Inserisci il percorso della cartella: " directory

# Verifica l'esistenza della directory
if [ ! -d "$directory" ]; then
  # Se non esiste ritorna un messaggio di errore
  echo "Errore: la cartella non esiste!"
  # Termina lo scrpit
  exit 1
fi

# Il comando "find" viene usato per cercare nelle directory e nelle sotto directory
# -type f per precisare di non applicare sulle directory
# -size -10k  indichiamo la dimensione dei file
# -exec cancella ogni file trovato corrispondente
# {}  viene sostituito con il nome del file trovato
# \;  viene terminato con -exec
find "$directory" -type f -size -40k -exec rm -v {} \;
#Modifico il valore ogni volta 

# Messaggio di output per informare l'utente dello stato finale (l'esito)
echo "File più piccoli di 10 KB eliminati con successo."
