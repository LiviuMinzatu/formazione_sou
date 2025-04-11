#!/bin/bash

declare -A address # Creazione di un array associativo

# Assegnazione dei dati all'array associativo
address[Charles]="414 W. 10th Ave., Baltimore, MD 21236"
address[John]="202 E. 3rd St., New York, NY 10009"
address[Wilma]="1854 Vermont Ave, Los Angeles, CA 90023"

# Stampa gli indirizzi associati a Charles, Wilma e John
echo "Charles's address is ${address[Charles]}."
echo "Wilma's address is ${address[Wilma]}."
echo "John's address is ${address[John]}."

# Stampa una riga vuota
echo

# Stampa tutte le chiavi dell'array associativo
echo "${!address[*]}"

