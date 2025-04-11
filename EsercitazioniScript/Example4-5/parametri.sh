#!/bin/bash

MINIMOPARAMETRI=10  
 
echo #Spazio di una riga
 
echo "Il nome dello script è: \"$0\"." #Stampa del nome dello script

echo "Il nome dello script è: \"`basename $0`\"." #Stampa del nome dello script pero senza includere tutto il percorso
 
echo #Spazio di una riga
 
if [ -n "$1" ]   # Struttura di controllo per capire se il primo parametro è vuoto
# Quindi viene se $1 non c'è l'if restituira false che in questo caso non è stato dichiarato e non procedera con gli altri parametri
then
 echo "Parametro #1 è: $1" # Stampa del primo parametro  
fi
 
if [ -n "$2" ] 
then
 echo "Parametro #2 è: $2" # Stampa dell'eventuale secondo parametro
fi
 
if [ -n "$3" ]
then
 echo "Parametro #3 è: $3" # Stampa dell'eventuale terzo parametro
fi
 
# ... fino alla fine
 
 
if [ -n "${10}" ] # Struttura di controllo per il decimo parametro, racchiso tra parentesi graffe
# Questo avviene perche dopo il nono parametro i due caratteri 1 e 0 possono essere percepiti come 2 caratteri separati
then
 echo "Parametro #10 è: ${10}" # Stampa del decimo carattere
fi
 
echo "-----------------------------------" #Stampa della linea
echo "Elenco di tutti i parametri inseriti:  "$*"" # Stampa tutti i parametri tramite $* (* si intende all, quindi tutti)
 
if [ $# -lt "$MINIMOPARAMETRI" ] # Struttura di controllo che controlla se il numero dei parametri passati è minore di 10
# Nel caso affermativo stampa l' echo 
then
  echo
  echo "Questo richiesta almeno $MINIMOPARAMETRI parametri come argomento!"
fi 
 
echo
 
exit 0
