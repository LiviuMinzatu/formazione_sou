#!/bin/bash
# Questo è uno script Bash che fa la scansione delle porte TCP su una macchina specificata

# Avviene il controllo dei parametri passati
if [ "$#" -ne 3 ]; then
    # Se gli argomenti non sono abbastanza mostra un messaggio
    echo "Uso: $0 <IP/host> <porta_inizio> <porta_fine>"
    exit 1
fi

# Assegno gli argomenti a variabili leggibili
TARGET=$1         # Il primo argomento: IP o hostname della macchina specificata
START_PORT=$2     # Il secondo argomento indica la porta da cui cominciare
END_PORT=$3       # Il terzo argomento indica fino a dove effettuare la verifica

# Controllo se i numeri sono interi
if ! [[ "$START_PORT" =~ ^[0-9]+$ ]] || ! [[ "$END_PORT" =~ ^[0-9]+$ ]]; then
    # Se uno dei due numeri non è positivo, restituisco un echo con l'errore
    echo "Errore: le porte devono essere numeri interi."
    exit 2
fi

# Controllo che la porta iniziare sia superiore alla porta finale, es: da porta 300 - 55
if [ "$START_PORT" -gt "$END_PORT" ]; then
    echo "Errore: porta iniziale maggiore della finale."
    exit 3
fi

# Avvio scansione....
echo "Scansione in corso su $TARGET da porta $START_PORT a $END_PORT..."

# Avvio del ciclo for
for ((port=$START_PORT; port<=$END_PORT; port++)); do
    # Uso il comando `nc` (netcat) per testare se la porta è aperta
    # `timeout 1` serve per non aspettare troppo se la porta è chiusa
    # `-z` dice a nc di non inviare dati (solo controllare se è aperta)
    # `-v` serve per mostrare piu informazioni su cosa sta succedendo
    # `2>/dev/null` serve per indirizzare gli errori nel nulla
    timeout 1 nc -z -v "$TARGET" "$port" 2>/dev/null && echo "Porta $port aperta"
    # Se il comando ha successo viene stampato che la porta è aperta.
done

