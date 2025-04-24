#!/bin/bash


barra_caricamento() {
    durata=${1:-60}         # Primo argomento: durata in secondi (default: 60)
    lunghezza_barra=50      # Lunghezza della barra

    echo -n "Caricamento: ["
    for ((i=0; i<=durata; i++)); do
        percent=$((i * 100 / durata))
        filled=$((i * lunghezza_barra / durata))
        empty=$((lunghezza_barra - filled))

        printf "\rCaricamento: ["
        printf "%0.s#" $(seq 1 $filled)
        printf "%0.s-" $(seq 1 $empty)
        printf "] %3d%%" "$percent"

        sleep 1
    done

    echo -e "\nCompletato!"
}



while true; do
  echo "== Avvio container su nodo1 =="
  vagrant ssh nodo1 -c "docker run -d --name echo-server -p 8080:80 ealen/echo-server"

  echo "== Attesa di 60 secondi =="
  barra_caricamento 60


  echo "== Stop container su nodo1 =="
  vagrant ssh nodo1 -c "docker stop echo-server && docker rm echo-server"

  echo "== Avvio container su nodo2 =="
  vagrant ssh nodo2 -c "docker run -d --name echo-server -p 8080:80 ealen/echo-server"

  echo "== Attesa di 60 secondi =="
  barra_caricamento 60

  echo "== Stop container su nodo2 =="
  vagrant ssh nodo2 -c "docker stop echo-server && docker rm echo-server"

done


