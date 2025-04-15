import subprocess  # Importa il modulo per eseguire comandi di sistema
import time  # Importa il modulo per il controllo dei tempi di attesa
from datetime import datetime  # Importa la classe datetime per gestire data e ora

# Mappa dei nodi, in base alla parità del minuto
NODI = {
    "pari": "node1",  # Nodo per i minuti pari
    "dispari": "node2"  # Nodo per i minuti dispari
}

# Nome e immagine del container Docker da eseguire
NOME_CONTAINER = "echo-server"
IMMAGINE = "ealen/echo-server"



# Funzione per creare il comando SSH da eseguire su un nodo
def comando_ssh(nodo, comando):
    return f'vagrant ssh {nodo} -c "{comando}"'



# Funzione per fermare il container sul nodo specificato
def ferma_container(nodo):
    subprocess.run(comando_ssh(nodo, f"sudo docker rm -f {NOME_CONTAINER} || true"), shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)




# Funzione per avviare il container sul nodo specificato
def avvia_container(nodo):
    subprocess.run(comando_ssh(nodo, f"sudo docker run -d --name {NOME_CONTAINER} -p 80:80 {IMMAGINE}"), shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)




# Funzione che restituisce "pari" o "dispari" in base al minuto attuale
def parità_minuto():
    return "pari" if datetime.now().minute % 2 == 0 else "dispari" # Molto importante questo procedimento




# Funzione per visualizzare una barra di caricamento durante l'attesa
def barra_caricamento(durata, passo=1):
    for i in range(0, durata, passo):
        barra = "█" * (i // passo) + "-" * ((durata - i) // passo)  # Crea la barra di progresso
        print(f"\r⏳ Prossimo controllo tra {durata - i:02d}s | {barra}", end="", flush=True)  # Mostra la barra
        time.sleep(passo)  # Pausa di un secondo
    print("\r", end="")






# Funzione principale che monitora e alterna l'avvio e lo stop dei container
def loop():
    stato_prec = None  # Stato del container precedente
    print("🔁 Inizio monitoraggio del minuto attuale...\n")
    while True:
        parità = parità_minuto()  # Ottieni la parità del minuto corrente
        minuto_corrente = datetime.now().minute  # Ottieni il minuto attuale

        if parità != stato_prec:  # Se la parità è cambiata rispetto al minuto precedente
            print(f"\n🕒 Minuto {minuto_corrente:02d} ({parità.upper()})")
            print(f"🟢 Avvio container su {NODI[parità]}")  # Avvia il container sul nodo corretto.


            avvia_container(NODI[parità])
            altro = "pari" if parità == "dispari" else "dispari"  # Trova l'altro nodo
            print(f"🔴 Arresto container su {NODI[altro]}")  # Ferma il container sull'altro nodo.


            ferma_container(NODI[altro])
            stato_prec = parità  # Aggiorna lo stato precedente
        else:

            print(f"\n🕒 Minuto {minuto_corrente:02d} → nessun cambio, container già attivo su {NODI[parità]}")  # Nessun cambiamento

        barra_caricamento(10)  # Mostra la barra di caricamento per 10 secondi

# Punto di ingresso del programma
if __name__ == "__main__":
    loop()  # Avvia il ciclo di monitoraggio
