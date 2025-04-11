#!/bin/bash
# Naked variables
 
echo # Stampa riga vuote

 

a=879 # Assegnazione alla variabile a il valore 879
echo "The value of \"a\" is $a." # Stampa dell'attuale valore
 
let a=16+5 # Riassegnazione alla variabile a tramite somma di due interi
echo "The value of \"a\" is now $a." # Stampa a video del valore di a
 
echo # Stampa riga vuota
 

echo -n "Values of \"a\" in the loop are: " # Stampa la stringa e non va a capo perche viene usato "-n"
# Quindi "7 8 9 11" verranno stampati sulla stessa riga di prima
for a in 7 8 9 11 # Avvio ciclo for con variabile a
do # do sta per "esegui questo: "
  echo -n "$a " # Stampadi a ad ogni ciclo
done
# Fine ciclo for

echo 
echo # Due righe vuote
 

echo -n "Enter \"a\" " # Si chiede di inserire un valore da assegnare alla variabile a
read a # Legge il valore
echo "The value of \"a\" is now $a." # Stampa a video del valore della variabile a dopo averla aggiornata
 
echo # Riga vuota
 
exit 0 # Fine codice