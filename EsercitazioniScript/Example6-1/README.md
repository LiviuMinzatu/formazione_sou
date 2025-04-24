# Exit Status Script

Questo semplice script Bash serve per mostrare **il codice di ritorno (exit status)** dei comandi eseguiti. È un ottimo esercizio per capire come Bash gestisce il successo o il fallimento dei comandi.

---

## Cosa fa lo script

1. Esegue il comando `echo hello`
   - Stampa `hello`
   - Mostra il codice di uscita (`$?`), che sarà `0` (successo)
2. Esegue un comando inesistente (`lskdf`)
   - Bash mostrerà un errore
   - Il codice di uscita sarà diverso da `0` (fallimento)
3. Stampa una riga vuota
4. Termina lo script con un codice personalizzato: `exit 113`

---

## Esecuzione

Per eseguire lo script:

```bash
chmod +x nome_script.sh
./nome_script.sh
