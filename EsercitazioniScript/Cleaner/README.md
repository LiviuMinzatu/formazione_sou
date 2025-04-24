# Cleaner Script

Uno **script Bash** semplice ed efficace per pulire una directory eliminando tutti i file **più piccoli di 10 KB**.

---

## Descrizione

Questo script permette di selezionare una cartella e in automatico, rimuove tutti i file al di sotto della soglia di **10 kilobyte**. È utile per:

- Fare pulizia da file inutili
- Eliminare output temporanei di test
- Ridurre spazio occupato da file di piccole dimensioni

---

## Funzionamento

1. Lo script chiede all’utente di inserire un percorso di directory (PATH).
2. Verifica che la directory esista effettivamente.
3. Utilizza il comando `find` per cercare e cancellare tutti i file più piccoli di 10 KB.
4. Mostra i file eliminati uno per uno.
5. Alla fine stampa un messaggio di conferma 

---

## Esempio di utilizzo

```bash
$ ./cleanup.sh
Inserisci il percorso della cartella: /home/utente/Scrivania/progetto
...
'eliminato file1.txt'
'eliminato prova.log'
File più piccoli di 10 KB eliminati con successo.